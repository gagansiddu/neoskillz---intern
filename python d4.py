try:
    a=int (input("Enter a number:"))
    res=10/a
except ZeroDivisionError:
    print ("Division by 0 not possible.")
except ValueError:
    print ("Entered non_numeric value...")

try:
    file=open("texts.txt",'r')
    c=file.read()
    print(c)
except FileNotFoundError:
    print("The file is not present.")

student = {"name":"Laxmi","age":"23","Maths_score":75}

try:
    print(student["English_marks"])
except KeyError:
    print("No such key is present in Dictionary...")

num=[1,2,3]

try:
    print(num[3])
except IndexError:
    print("You tride the index that doesn't exist.")

try:
    a="100"-6
except TypeError:
    print("you cannot subtract int by string.")

try:
    print(z)
except NameError:
    print("Variable Not Fount.")



