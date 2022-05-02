import binascii
import random
import time

#stores 100 random hash functions
hashf=[]

def shingles(file,num,prime,n,sig):
#divides the documents into all possible shingles (shingle = 3 consecutive words)
	
	for line in file:
		all_words = line.split(" ")
		temp=[1000000]*(num)
		
		for i in range(1,len(all_words)-3):
			
			shingle=all_words[i]+" "+all_words[i+1]+" "+all_words[i+2];

			#generates 8 digit decimal equivalent of a string	
			sum=binascii.crc32(str.encode(shingle)) & 0xFFFFFFFF

			#generates the document signature
			hashfunc(sum,num,prime,temp)
		temp.append(all_words[0])
		sig.append(temp)

	return sig


def bruteshingles(file,num,prime,n,sig2):
#divides the documents into all possible shingles (shingle = 3 consecutive words)
	
	for line in file:
		all_words = line.split(" ")
		temp=[]
		temp.append(all_words[0])

		for i in range(1,len(all_words)-3):
			
			shingle=all_words[i]+" "+all_words[i+1]+" "+all_words[i+2];

			#generates 8 digit decimal equivalent of a string	
			sum=binascii.crc32(str.encode(shingle)) & 0xFFFFFFFF
			temp.append(sum)

		
		sig2.append(temp)


	return sig2

def hashfunc(shin,num,prime,signature):
#generates the minimum value of each hash function for all shingles of the document 
	v=0
	for case in hashf:
		val=(shin*case[0]+case[1])%102345689
		#hashfunction is of the type: h = (ax + b)%p 
		
		signature[v]=min(signature[v],val)
		#storing the minimum hash value

		v=v+1

def main():
	n=int(input("Enter number of articles :"))
	num=30
	sig=[]*n
	brutesig=[]*n

	#generating 100 random and unique a,b pairs used in hash functions
	while len(hashf)<num:
		a=random.randint(1,num)
		b=random.randint(1,num)
		if [a,b] not in hashf:
			hashf.append([a,b])

	
	for i in range(n):
		name=input("Enter name of the document: ")
		file=open(name,"r")
		bruteclassify=[]
		brutelist=[]
		start=time.time()
		print("\nCalculating Shingles for all ",n," Articles")
		brutesig=bruteshingles(file,num,1307,n,brutesig)

		print("Time taken to calculate shingles...", time.time()-start," seconds")
		print("\nCalculating Actual Jaccard Similarities among all pairs")
		start=time.time()
		for i in range (n):
			for j in range(i+1,n):
				sim=(len(set(brutesig[i]).intersection(set(brutesig[j]))) / len(set(brutesig[i]).union(set(brutesig[j]))))
					
				if sim>=0.000005:
					#sim=round(sim,4)
					bruteclassify.append([brutesig[i][0],brutesig[j][0],sim])
					brutelist.append([brutesig[i][0],brutesig[j][0]])

		print("Time taken to calculate Actual Jaccard Similarity...",time.time()-start," seconds")
			

		print("\nSimilar Document pairs\nDocument 1    Document 2      Jaccard Similarity")
		for i in bruteclassify:
			i[2]=round(i[2],4)
			print("  ",i[0],"        ",i[1],"          ",i[2])

		file.close()
		file=open(name,"r")
		start=time.time()
		print("\nCalculating signatures for all ",n," Articles")
		sig=shingles(file,num,1307,n,sig)
		print("Time taken to calculate shingles...", time.time()-start," seconds")

	sim=0
	classify=[]
	estlist=[]
	
	#calculating the estimated Jaccard similarity
	print("\nCalculating estimated Jaccard Similarities among all pairs")
	start=time.time()
	for i in range (n):
		for j in range(i+1,n):
			sim=(len(set(sig[i]).intersection(set(sig[j]))) / len(set(sig[i]).union(set(sig[j]))))
				
			if sim>=0.0000005:
				#sim=round(sim,4)
				classify.append([sig[i][num],sig[j][num],sim])
				estlist.append([sig[i][num],sig[j][num]])

	print("Time taken to calculate estimated Jaccard Similarity...",time.time()-start," seconds")
		

	print("\nSimilar Document pairs\nDocument 1    Document 2      Jaccard Similarity")
	for i in classify:
		
		i[2]=round(i[2],4)
		print("  ",i[0],"        ",i[1],"          ",i[2])


	#for i in estlist:
	#	print(i)

	#print("$$$$$$:")

	#for j in brutelist:
	#	print(j)
	tp=0

	print("True positives:",end=" ")
	for i in estlist:
		if i in brutelist:
			tp=tp+1


	print(tp,"/",len(brutelist),"\n")
	print("False positives: ",end=" ")
	fp=max(len(estlist)-tp,0)
	fn=max(len(brutelist)-tp,0)
	print(fp,"\n")
	print("False negatives: ",end=" ")
	print(fn,"\n")
	precision=tp/(tp+fp)
	recall=tp/(tp+fn)
	score=2*(precision*recall)
	score=score/(precision+recall)

	print(score)
	
	#print( len( set( brutelist ).intersection( set( estlist ) ) ) )

	
	
	



if __name__ == '__main__':
    main()

