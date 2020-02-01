import csv
with open('brands.csv', newline='') as csvfile:
    brands = list(csv.reader(csvfile))
with open('category.csv', newline='') as csvfile:
    category = list(csv.reader(csvfile))
with open('influencers.csv', newline='') as csvfile:
    influencers = list(csv.reader(csvfile))
with open('clients.csv', newline='') as csvfile:
    clients = list(csv.reader(csvfile))


'''
Clients
'''
for k in range(len(category)):
    target = category[k][1]
    id_num = category[k][0]
    for j in range(len(clients)):
        if target == clients[j][1]:
            clients[j][1] = id_num

for k in range(len(brands)):
    target = brands[k][2]
    id_num = brands[k][0]
    for j in range(len(clients)):
        if target == clients[j][2]:
            clients[j][2] = id_num
#removing duplicates

uniqueUsers = []
for k in range(len(clients)):
    target = clients[k][3]
    uniqueUsers.append(target)
uniqueUsers = list(set(uniqueUsers))

userName = []

for k in range(len(clients)):
    target = clients[k][3]
    userName.append([target])

#counting frequency
L = len(userName)
L2 = len(uniqueUsers)
for k in range(L):
    count = 0
    userName[k] = [userName[k],count]


for k in range(L2):
    target = [uniqueUsers[k]]
    count = 0
    for j in range(L):
        if target == userName[j][0]:
            count += 1
            userName[j][1] = userName[j][1]+count

#returning unique list
uniqueUsers = []
for k in range(L):
    if userName[k][1] == 1:
        uniqueUsers.append(clients[k])

clients = uniqueUsers

#string
for k in range(len(clients)):
    clients[k] = '(' + str(k)+','+clients[k][1]+','+clients[k][2]+','+ "'" +clients[k][3]+"'"+')'   
clients = clients[1:]


strngC = ",".join(str(x) for x in clients)

    
'''
Influencers
'''

for k in range(len(category)):
    target = category[k][1]
    id_num = category[k][0]
    for j in range(len(influencers)):
        if target == influencers[j][1]:
            influencers[j][1] = id_num

for k in range(len(brands)):
    target = brands[k][2]
    id_num = brands[k][0]
    for j in range(len(influencers)):
        if target == influencers[j][2]:
            influencers[j][2] = id_num

#removing duplicates

uniqueUsers = []
for k in range(len(influencers)):
    target = influencers[k][3]
    uniqueUsers.append(target)
uniqueUsers = list(set(uniqueUsers))

userName = []

for k in range(len(influencers)):
    target = influencers[k][3]
    userName.append([target])

#counting frequency
L = len(userName)
L2 = len(uniqueUsers)
for k in range(L):
    count = 0
    userName[k] = [userName[k],count]


for k in range(L2):
    target = [uniqueUsers[k]]
    count = 0
    for j in range(L):
        if target == userName[j][0]:
            count += 1
            userName[j][1] = userName[j][1]+count

#returning unique list
uniqueUsers = []
for k in range(L):
    if userName[k][1] == 1:
        uniqueUsers.append(influencers[k])

influencers = uniqueUsers


#string
for k in range(len(influencers)):
    influencers[k] = '(' + str(k) +','+influencers[k][1]+','+influencers[k][2]+','+ "'" +influencers[k][3]+"'"+')'   
influencers = influencers[1:]


strng = ",".join(str(x) for x in influencers)
#print(influencers)
print(strng)


# Read in the file
with open('dedicated_marketing.txt', 'r') as file :
  filedata = file.read()
#Replace the target string


'''
For clients
'''
filedata = filedata.replace("clientData","INSERT INTO `clients` VALUES" + ' ' + strngC)
'''
For influencers
'''
filedata = filedata.replace("influencerData","INSERT INTO `influencers` VALUES" + ' ' + strng)


# Write the file out again
with open('dedicated_marketing.sql', 'w') as file:
  file.write(filedata)
'''

'''
'''
INSERT INTO `clients` VALUES (1,1,1,'AutoModerator'),(2,1,1,'danielkang2'),(3,1,1,'Teechce'),(4,1,1,'tunkor'),(5,1,1,'younsomoom'),(6,1,1,'sleekpaprika69'),(7,1,1,'DeItaCubes'),(8,1,1,'monstergeek'),(9,1,1,'SolitaireJack'),(10,1,1,'AllieFilmore'),(11,1,1,'kaitlyn2004');
'''



