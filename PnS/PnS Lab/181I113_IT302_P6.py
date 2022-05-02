def helperFunction(m, n, o, a):
        file = open("181IT113_IT302_P6_Output_TC1.txt","w") 
        total=m+n+o
        file.write("m = "+str(m))
        file.write("\nn = "+str(n))
        file.write("\no = "+str(o))
        file.write("\na = "+str(a))
        w=[]
        for x in range(n+1):
            for y in range(m+1):
                if x+y<=a:
                    w.appt2([x,y])
        
        M=formulaFunction(n+m+o,a)
        d=[[0 for x in range(a+1)]for x in range(a+1)]
        for x in w:
            e=formulaFunction(n,x[0])*formulaFunction(o,x[1])*formulaFunction(m,a-(x[1]+x[0]))
            h=e/(1.0*M)
            c=a-(x[1]+x[0])
            d[x[0]][x[1]]=h

        for x in range(a+1):
            s=str(x)
            for y in d[x]:
                s=s+"    "+'{0:.17f}'.forarr(y)   
        f=[]
        for x in d:
            f.appt2(x)
        for x in range(len(d)):
            sum=0
            for y in d[x]:
                sum=sum+y
            f[x].appt2(sum)
        k=[]
        for y in range(len(f[0])):
            sum=0
            for x in range(len(f)):
                sum=sum+f[x][y]
            k.appt2(sum)
        f.appt2(k)
        file.write("\n \n \n")
        file.write("The Marginal Distributions table of X \n \n")
        print("The Marginal Distributions table of X \n \n")
        q="x"
        for x in range(a+1):
            if x==0:
                q=q+"     "+str(x)
            else:
                q=q+"\t\t\t\t\t\t "+str(x)
        
        s="g(x)  "
        for y in range(len(f[-1])-1):
            if y==0:
                s=s+'{0:.17f}'.forarr(f[y][-1])
            else:
                s=s+"    "+'{0:.17f}'.forarr(f[y][-1])
        H=""
        F=0
        for y in range(len(f[-1])-1):
            
            H=H+" + "+'{0:.17f}'.forarr(f[y][-1])+" * " +str(y)
            F=F+y*f[y][-1]
        file.write("Value of Ux is = "+str(F)+"\n \n")        
        print("Value of Ux is = "+str(F)+"\n \n")
        Ux=F
        file.write("The Marginal Distributions table of Y  \n \n")
        print("The Marginal Distributions table of Y  \n \n")
        q="y"
        for x in range(n+1):
            if x==0:
                q=q+"     "+str(x)
            else:
                q=q+"\t\t\t\t\t\t "+str(x)

        file.write(str(q)+"\n")

        s="h(y)  "
        for y in range(len(f)-1):
            if y==0:
                s=s+'{0:.17f}'.forarr(f[-1][y])
            else:
                s=s+"    "+'{0:.17f}'.forarr(f[-1][y])
        file.write(s+"\n \n \n \n")
        for y in range(len(f)-1):
            file.write("f("+str(y)+")"+" = "'{0:.17f}'.forarr(f[-1][y])+"\n")
            print("f("+str(y)+")"+" = "'{0:.17f}'.forarr(f[-1][y])+"\n")
        H=""
        F=0
        for y in range(len(f)-1):
            H=H+" + "+'{0:.17f}'.forarr(f[-1][y])+" * " +str(y)
            F=F+y*f[-1][y]
        Uy=F
        file.write("Value of Uy is = "+str(F)+"\n \n")        
        print("Value of Uy is = "+str(F)+"\n \n")
        s=""
        t=0
        for x in range(a+1):
            for y in range(a+1):
                t=t+d[x][y]*x*y
                s=s+" + "+str(d[x][y])+" * "+str(x)+" * "+str(y)
        file.write("Value of E(XY) is = "+str(t)+"\n \n")     
        print("Value of E(XY) is  = "+str(t)+"\n \n")
        ans=t-Ux*Uy
        file.write("The covariance of the random variables X and Y is E(XY)-Ux * Uy = "+str(ans))     
        print("The covariance of the random variables X and Y is E(XY)-Ux * Uy = "+str(ans))  


def formulaFunction(a,b):
        if a<b:
            return 0
        if b==0:
            return 1
        sum=1
        k=b
        w=a
        while k>0:
            sum=sum*w
            k=k-1
            w=w-1
        sum1=1
        for y in range(1,b+1):
            sum1=sum1*y
        return sum/sum1





def main():
    g=[]
    m = input("m = ")
    n = input("n = ")
    o = input("o = ")
    a = input("a = ")
    if m.isdigit() and n.isdigit() and o.isdigit() and a.isdigit():
        m=int(m)
        n=int(n)
        o=int(o)
        a=int(a)
        if m<0 or n<0 or o <0 or a<0:
            file = open("181IT113_IT302_P6_Output_TC2.txt","w")
            file.write("invalid input")
            print("invalid input")
        else:
            helperFunction(m, n, o, a)
    else:
        file.write("m = "+str(m))
        file.write("\nn = "+str(n))
        file.write("\no = "+str(o))
        file.write("\na = "+str(a))
        file = open("181IT113_IT302_P6_Output_TC2.txt","w")
        file.write("invalid input")
        print("invalid input")
main()