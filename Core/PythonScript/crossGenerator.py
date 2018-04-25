print("// script in python che genera la croce all'interno della cella")
print("// Modulo autogenerato da "+__file__);
print("// Non modificare! Qualsisasi modifica sara' cancellata all'esecuzione successiva");
dimension = 2
cell_dim_x = 640
cell_dim_y = 480
var_in_1 = "pos_x"
var_in_2 = "pos_y"
var_in_3 = "cell_x"
var_in_4 = "cell_y"
var_center = 0;
color = "12'b000100010001"
print ("function [11:0] crossGenerator;")
print ("input [9:0] "+var_in_1 +";");
print ("input [9:0] "+var_in_2 +";");
print ("input [3:0] "+var_in_3 +";");
print ("input [3:0] "+var_in_4 +";");
print ("begin")
for i in range (0,cell_dim_y): 
	pos_x_to_print = round(i*cell_dim_x/cell_dim_y, 0)
	pos_x_to_print_backward = cell_dim_x-pos_x_to_print
	pos_x_inf = pos_x_to_print - dimension
	pos_x_sup = pos_x_to_print + dimension
	pos_x_inf_backward = pos_x_to_print_backward - dimension
	pos_x_sup_backward = pos_x_to_print_backward + dimension
	if (pos_x_inf < 0):
		pos_x_inf = 0
	if (pos_x_sup < 0):
		pos_x_sup = 0
	if (pos_x_inf_backward < 0):
		pos_x_inf_backward = 0
	if (pos_x_sup_backward < 0):
		pos_x_sup_backward = 0
	if (pos_x_inf > cell_dim_x -1):
		pos_x_inf = cell_dim_x - 1
	if (pos_x_sup > cell_dim_x -1):
		pos_x_sup = cell_dim_x - 1
	if (pos_x_inf_backward > cell_dim_x -1):
		pos_x_inf_backward = cell_dim_x - 1
	if (pos_x_sup_backward > cell_dim_x -1):
		pos_x_sup_backward = cell_dim_x - 1

	if (i == 0):
		print( "\tif (", end='')
	else:
		print( "\telse if (", end='')
	print (var_in_2+" == " +str(i)+") // capisco in che riga sono")
	print ("\tbegin")
	print ("\t\t//data la riga, posso calcolare in che posizione devo mettere le x:")	
	print ("\t\t//"+var_in_1+" = "+str(i)+"*"+str(cell_dim_x)+"/"+str(cell_dim_y)+" = "+str(int(round(pos_x_to_print, 0)))+"")	
	print ("\t\tif(("+var_in_1+" <= 10'd"+str(int(pos_x_sup))+" && "+var_in_1+">= 10'd"+str(int(pos_x_inf))+")")
	print ("\t\t\t || ("+var_in_1+" <= 10'd"+str(int(pos_x_sup_backward))+" && "+var_in_1+">= 10'd"+str(int(pos_x_inf_backward))+"))")
	print ("\t\t begin")
	print ("\t\t\t crossGenerator = "+color+";")
	print ("\t\t end")
	print ("")
	print ("\tend")
print ("end")
print ("endfunction")
