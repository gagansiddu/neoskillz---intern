with open ("text.txt","w")as f:
    f.write ("Today is our ai ml class")
    print("data written successfully")

with open ("text.txt","r")as f:
    print (f.read())

with open ("text.txt","a")as f:
    f.write("at 5pm")

with open ("text.txt","r")as f:
    c=f.read()
    print(c)

with open ("text.txt","r")as f:
    for line in f:
        print (line.strip())



