File = open("HarryPotterAndTheSorcerersStone.txt",'r') 
DictionaryOfWords = {}
Novel = []                     
i = 0                   
for line in File.readlines():     
    
	line = line.replace(".","").replace(",","").replace('?','').replace('!','').replace('[','').replace(']','')\
    .replace('(','').replace(')','').replace('%','').replace('/','')
	for word in line.split(' '):
	    if  word in DictionaryOfWords.keys():
	        i.append(DictionaryOfWords[word])
	    else:
	        DictionaryOfWords[word]=[i]
	    Novel.append(word)
	    i+=1
def GetQuery():
   
	word = input("enter your word")        

	Number = input("enter your number")     

	return [word,Number]                 
def PrintContext(index):
    global Novel                          
    for i in range(index-5,index+5 ) : 	          
        print(Novel[i], end = ' ')                  
    print('\n')
def PrintResult(word, NumQuery):
  
	global DictionaryOfWords                
    
	L = DictionaryOfWords[word] 
    
	for i in range(0,min(len(L),int(NumQuery))):
        	PrintContext(L[i])
while 1>0 :   
    Choice = input('Press Y in order to Continue with the next query or N to end\
    Please press Enter after entering your choice!')
    if Choice== "Y" :                    
        m=list(GetQuery())
        PrintResult(m[0],m[1])                   
    else:
        break
