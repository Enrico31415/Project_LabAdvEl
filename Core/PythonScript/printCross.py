#scipt che parametrizza una croce di dimensione cube_dimension su una matrice di dimensione impostata. Utile per implementarlo poi in vlog
max_x = int(640/8)
max_y = int(480/8)
dim  = 4
x=0
y=0
print ("//File autogenerato da "+__file__);
print ("//non modificare! Qualsiasi modifica potrebbe essere cancellata all'esecuzione successiva")
print ("`define d_cross \t", end='')
print (""+str(64*48)+"'b", end='')
for i in range(0,max_y):
    for j in range(0,max_x):
        x = j/64*48
        x = int(round(x,0))
        x_max = x+dim
        x_min = x-dim
        if ((i <= x_max and i >= x_min) or(max_y-1-i <= x_max and max_y-1-i >= x_min)):
            print("1", end='')
        else:
            print("0", end='')
print("")
