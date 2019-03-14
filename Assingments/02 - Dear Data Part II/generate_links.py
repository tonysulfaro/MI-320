
fp = open('urls.txt','w')

for x in range(1000):
    fp.writelines('https://www.aainflight.com/media/'+str(x)+'\n')

fp.close()