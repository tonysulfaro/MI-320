fp = open('music_study_data.csv', 'r')
out = open('out_data.csv', 'w')

fp.readline()

out.writelines('timestamp,year,month,day,hour,minute,second,music_genre,task,location,duration,services\n')

for line in fp:
    line = line.split(',')
    timestamp = line[0]
    line[0] = line[0].split()
    line[0][0] = line[0][0].split('/')
    #timestamp = '-'.join(line[0][0])
    line[0][1] = line[0][1].split(':')
    new_line = line[0][0] + line[0][1]
    line = [timestamp] + [new_line[2]] + [new_line[0]] + [new_line[1]] + line[0][1] + line[1:]
    print(line)
    out.writelines(','.join(line))

fp.close()
out.close()
