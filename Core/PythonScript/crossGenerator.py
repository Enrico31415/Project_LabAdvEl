print("// script in python che genera la croce all'interno della cella")
print("// Modulo autogenerato da "+__file__);
print("// Non modificare! Qualsisasi modifica sara' cancellata all'esecuzione successiva");
dimension = 2
var_in_1 = "pos_x"
var_in_2 = "pos_y"
var_in_3 = "cell_x"
var_in_4 = "cell_y"
color = "12'b000100011111"
color_back ="12'b000111111111"
print ("function [11:0] crossGenerator;")
print ("input [9:0] "+var_in_1 +";");
print ("input [9:0] "+var_in_2 +";");
print ("input [3:0] "+var_in_3 +";");
print ("input [3:0] "+var_in_4 +";");
print ("begin")
for i in range (0,10): 
    center_x = int(64*(i)+32)
    if (i == 0):
        print( "\tif (", end='')
    else:
        print( "\tif (", end='')
    print(var_in_3 + " == 4'd"+str(i)+")")
            #&& "+var_in_4+" == 4'd"+str(j)+ ")")
    print("\tbegin")
    print("\t\tif (("+var_in_1+" <= 10'd"+str(center_x+dimension)+") && ")
    print("\t\t ("+var_in_1+" >= 10'd"+str(center_x-dimension)+")) ")
    print("\t\tbegin")  
    print("\t\t\t crossGenerator = "+color+";")
    print("\t\tend")  
    print("\t\telse")
    print("\t\tbegin")  
    print("\t\t\t crossGenerator = "+color_back+";")
    print("\t\tend")  
    print("\tend")
print ("end")
print ("endfunction")
