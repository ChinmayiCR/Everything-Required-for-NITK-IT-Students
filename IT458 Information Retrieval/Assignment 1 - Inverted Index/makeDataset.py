import csv
with open('articles1.csv', encoding="utf8") as file:
    reader = csv.reader(file, delimiter=',')
    for row in reader:
        changeName = row[1] + ".txt"
        f = open(changeName, 'w')
        with open(changeName, 'w') as f1:
            f1.write(row[9])
