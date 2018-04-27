#scipt che parametrizza una croce di dimensione cube_dimension su una matrice di dimensione impostata. Utile per implementarlo poi in vlog
import math
max_x = 64
max_y = 48
dim  = 47
x=0
y=0
#print (""+str(64*48)+"'b", end='')
for i in range(0,max_y):
    for j in range(0,max_x):
        if (dim - j > 0):
            x = math.sqrt(dim**2 -j**2)
        else:
            x = math.sqrt(-dim**2 +j**2)
        x = int(round(x,0))
        if (i == x):
            print("1", end='')
        else:
            print("0", end='')


