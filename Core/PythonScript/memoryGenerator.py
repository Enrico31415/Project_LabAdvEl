# Programma che genera lo script che tiene traccia della memoria.
# genera cellMemory.v

#stringa di output
var_out_1 = "status"


#stringe di input
var_in_x = "mouse_cell_x"
var_in_y = "mouse_cell_y"
var_in_x_p = "pointer_cell_x"
var_in_y_p = "pointer_cell_y"

var_out_2 = "status_pointed_cell"


var_in_1 = "we"
var_in_2 = "new_value"


#periodo tipico

print ("// modulo autogenerato, non modificare. Qualsiasi modifica sarà cancellata all successiva esecuzione");
print ("// generato da "+__file__);

print ("module cell_io(")
print (" \t clk_in,");
print ("\t " +var_in_x+", //cella del mouse x ");
print ("\t " +var_in_y+", //cella del mouse y");
print ("\t " +var_in_x_p+", //cella del puntatore(pennello) x");
print ("\t " +var_in_y_p+", //idem y");
print ("\t " +var_in_1+", //Write enable, se deve scrivere");
print ("\t " +var_in_2+", //valore da scrivere");
print ("");
print ("\t " + var_out_1+", //stato ritornato dal mouse");
print ("\t " + var_out_2+" //stato ritornato dal puntantore");
print (");");

print("input clk_in;");
print("input "+var_in_1+";");
print("input [1:0]"+var_in_2+";");

print ("input [3:0]"+var_in_x+";")
print ("input [3:0]"+var_in_y+";")
print ("input [3:0]"+var_in_x_p+";")
print ("input [3:0]"+var_in_y_p+";")

print ("output reg [1:0]"+var_out_1+";")
print ("output reg [1:0]"+var_out_2+";")




# genero i 100 registri di memoria diversi
print ("// registri del tipo sta_X(posizione x)_Y(posizione y)")
for j in range (0,10):
	for i in range (0,10):
		print ("reg [1:0] stat_X"+str(i)+"_Y"+str(j)+" = 2'b00;")

print("// operazioni di scrittura/lettura dal mouse")
print ("always @ (negedge clk_in)")
print ("begin")


for j in range (0,10):
	for i in range (0,10):
		if j == 0 and i == 0:
			print ("\tif", end='')
		else:
			print("\telse if", end='')
		print ("("+var_in_x+" == 4'd"+str(i)+" && "+var_in_y+" == 4'd"+str(j)+")")
		print ("\tbegin")
		print ("\t\tif("+var_in_1+")")
		print ("\t\tbegin")
		print ("\t\t\tstat_X"+str(i)+"_Y"+str(j)+" ="+var_in_2+";")
		print ("\t\tend")
		print ("\t\t"+var_out_1+"=stat_X"+str(i)+"_Y"+str(j)+";")
		print ("\tend")


print ("end")
print("// operazioni di read, fatte per plottare a schermo")
print ("always @ (posedge clk_in)")
print ("begin")
for j in range (0,10):
	for i in range (0,10):
		if j == 0 and i == 0:
			print ("\tif", end='')
		else:
			print("\telse if", end='')
		print ("("+var_in_x_p+" == 4'd"+str(i)+" && "+var_in_y_p+" == 4'd"+str(j)+")")
		print ("\t\t"+var_out_2+"=stat_X"+str(i)+"_Y"+str(j)+";")
print ("end")
print ("endmodule")
