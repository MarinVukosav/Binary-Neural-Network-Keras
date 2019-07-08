file = open("test.txt","r")
f = open("numbers.txt","a")
for line in file:
    line = line.replace(' ','').replace('.','').replace('\n','')
    f.write(line)
    
f.close
