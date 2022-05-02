class solution(object):
    def sol(self,name,per,stamps,d):
        g={}
        total=0
        for x in range(len(name)):
            g[name[x]]=[per[x],stamps[x]]
        print(g)
        for x in g:
            total=total+(1.0/int(g[x][1]))*(int(g[x][0])/100.0)
        print(total)
        x=g[d]
        a=((1.0/int(x[1]))*(int(x[0])/100.0))/(total*1.0)
        return a
def main(): 
    g=[]
    file=open("input.txt")
    for line in file:
        line=line.strip()
        g.append(line)
    m=1
    file = open("output.txt","w") 
    for x in range(0,len(g),6):
        w=x+1
        a=g[w+1]
        b=g[w+2]
        c=g[w+3]
        d=g[w+4]
        name=a.split(" ")
        per=b.split(" ")
        stamps=c.split(" ")
        print(name,per,stamps,d)
        print(g)
        h=solution()
        total=0
        for x in per:
            total=total+int(x)
        if total==100:
            a=h.sol(name,per,stamps,d)
            file.write("output for test case  "+str(m)+" is "+str(a)+"\n")
        else:
            file.write("invalid input \n")
        m=m+1
main()