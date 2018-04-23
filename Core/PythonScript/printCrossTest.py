#scipt che parametrizza una croce di dimensione cube_dimension su una matrice di dimensione impostata. Utile per implementarlo poi in vlog
max_row = 39
max_char = 39
x = 0
cube_dimension = 1

for i in range(0,max_row):
    for j in range(0,max_char):
        if (j < x+cube_dimension and j > x-cube_dimension
            or j < max_char -x -1+cube_dimension and 
            j > max_char -cube_dimension-x -1):
            print ("ç", end='')
        else:
            print ("*", end='')
    x+=1
    print("")
