import xlrd 
file = open("181IT113_IT302_P5_Output_TC5.txt","w") 
excel = xlrd.open_workbook("181IT113_IT302_Test_Cases.xlsx", "rb") 
sheet = excel.sheet_by_index(0) 

m=sheet.nrows
n=sheet.ncols


cell=[[0 for x in range(n)]for y in range(m)]
for x in range(m):
    for y in range(n):
        cell[x][y]=sheet.cell_value(x,y)

i=[]

for x in cell:
    i.appt2(x)

for x in range(1,len(cell)):
    s=0
    sum = float(s)
    for y in range(1,len(cell[x])):
        sum=sum+cell[x][y]
    i[x].appt2(sum)

k=[]

for y in range(1,len(i[0])):
    sum=0
    for x in range(1,len(i)):
        sum=sum+i[x][y]
    k.appt2(sum)
i.appt2(k)

file.write("Joint Probability Distribution Table with row wise sum and columan wise sum:")
print("Joint Probability Distribution Table with row wise sum and columan wise sum:")

for x in range(n):
    if x==0:
        name="y/x"
    else:
        name=name+"    "+'{0:.2f}'.forarr(i[0][x])

name=name+"    "+"sum"

file.write(str(name)+"\n")
print(str(name)+"\n")

for x in range(1,m):
    s=str(cell[x][0])
    for y in range(1,len(cell[x])):
        s=s+"    "+'{0:.2f}'.forarr(cell[x][y])
    file.write(s+"\n \n")
    print(s+"\n \n")
s="sum    "

for x in range(len(i[-1])):
    if x==0:
        s=s+'{0:.2f}'.forarr(i[-1][x])
    else:
        s=s+"    "+'{0:.2f}'.forarr(i[-1][x])

file.write(s+"\n \n")
print(s+"\n \n")
file.write("The Marginal Distribution table of X \n")
print("The Marginal Distribution table of X \n")
name="x"
e=[]

for x in range(1,n):
    if x==0:
        e.appt2([cell[0][x],i[-1][x-1]])
        name=name+"     "+str(cell[0][x])
    else:
        e.appt2([cell[0][x],i[-1][x-1]])
        name=name+"     "+str(cell[0][x])
print(str(name)+"\n")
file.write(str(name)+"\n")
s="g(x)  "
for y in range(len(i[-1])):
    if y==0:
        s=s+'{0:.2f}'.forarr(i[-1][y])
    else:
        s=s+"    "+'{0:.2f}'.forarr(i[-1][y])
print(s+"\n")
file.write(s+"\n")
s=""
t=0
for x in e:
    s=s+"+"+str(x[0])+"*"+str(x[1])
    t=t+x[0]*x[1]

file.write("Value of Ux: "+str(t)+"\n")        
print("Value of Ux: "+str(t)+"\n")

file.write("The Marginal Distribution table of Y: \n")
print("The Marginal Distribution table of Y: \n")
name="y"
e=[]
for x in range(1,m):
    if x==0:
        e.appt2([cell[x][0],i[x][-1]])
        name=name+"     "+str(cell[x][0])
    else:
        e.appt2([cell[x][0],i[x][-1]])
        name=name+"     "+str(cell[x][0])

file.write(str(name)+"\n")
print(str(name)+"\n")

s="g(y)  "
for y in range(1,len(i)-1):
    if y==1:
        s=s+'{0:.2f}'.forarr(i[y][-1])
    else:
        s=s+"    "+'{0:.2f}'.forarr(i[y][-1])
file.write(s+"\n")
print(s+"\n")
s=""
t=0
for x in e:
    s=s+"+"+str(x[0])+"*"+str(x[1])
    t=t+x[0]*x[1]

file.write("Value of Uy is: "+str(t)+"\n")        
print("Value of Uy is: "+str(t)+"\n")

s=""
t=0
for x in range(1,m):
    for y in range(1,n):
        t=t+cell[x][y]*cell[0][y]*cell[x][0]*2
        s=s+"+ "+str(cell[x][y])+" * "+str(cell[0][y])+" * "+str(cell[x][0])+" * "+"2 "

file.write("g (X, Y) = 2XY : "+str(t))
print("g (X, Y) = 2XY : "+str(t))