print("// script in python che genera la croce all'interno della cella")
print("// Modulo autogenerato da "+__file__);
print("// Non modificare! Qualsisasi modifica sara' cancellata all'esecuzione successiva");
dimension = 2
var_in_1 = "pos_x"
var_in_2 = "pos_y"
var_in_3 = "cell_x"
var_in_4 = "cell_y"
var_center = 0;
print ("function [11:0] crossGenerator;")
print ("input [9:0] "+var_in_1 +";");
print ("input [9:0] "+var_in_2 +";");
print ("input [3:0] "+var_in_3 +";");
print ("input [3:0] "+var_in_4 +";");
print ("begin")
print ("\tif ( ("+var_in_1+" <= "+var_in_3+"*10'd64 + 10'd"+ str(dimension)+") && ("+var_in_1+" => "+var_in_3+"*10'd64 - 10'd"+ str(dimension)+" )  ) ");
print("\tbegin")
print("\t\t crossGenerator = 12'b111100000000;")
print("\tend")
print ("end")
for i in range (0,480):
    print (i*640/480)
print ("endfunction")
