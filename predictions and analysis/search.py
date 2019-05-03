import csv

print("\n\nENTER MOBILE NAME\n\n:")
key = input()

count = 0
print("\n\nCROMA :\n")
with open('C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\croma\\croma.csv', 'r') as f:
    reader = csv.reader(f)
    for row in reader:
            if key in row[1]:
                print (row[1],row[2],row[3],row[4])
                count +=1
count=0
print("\n\nFLIPKART :\n")
with open('C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\flipkart\\flipkart.csv', 'r') as f:
    reader = csv.reader(f)
    for row in reader:
            if key in row[1]:
                print (row[1],row[2],row[3],row[4])
                count +=1
 
count=0
print("\n\nSNAPDEAL :\n")               
with open('C:\\Users\\Shivam\\Desktop\\Mini pro\\27-2\\web scraping\\snapdeal\\snapdeal.csv', 'r') as f:
    reader = csv.reader(f)
    for row in reader:
            if key in row[1]:
                print (row[1],row[2],row[3],row[4])
                count +=1
                
print("\n\nNumber of phones found :",count)