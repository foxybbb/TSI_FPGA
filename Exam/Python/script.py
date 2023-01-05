
nameReadFile = "Porab2_hex.txt"
nameWriteFile = "Porab2_strhex.txt"
fileR = open(nameReadFile, 'r')
Lines = fileR.readlines()

fileW = open(nameWriteFile, 'w')

for line in Lines:
    fileW.write(f"X\"{line[:-1]}\",")
    
fileW.close();