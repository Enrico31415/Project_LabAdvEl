# Programma che genera lo script che tiene traccia della memoria.
# genera cellMemory.v

#stringa di output
var_out_1 = "status"


#stringe di input
var_in_x = "pos_x"
var_in_y = "pos_y"

var_in_1 = "write_enable"
var_in_2 = "new_value"


#periodo tipico

print ("// modulo autogenerato, non modificare. Qualsiasi modifica sarà cancellata all successiva esecuzione");
print ("// generato da "+__file__);

print ("module cell_io(")
print (" \t clk_in,");
print ("\t " +var_in_x+",");
print ("\t " +var_in_y+",");
print ("\t " +var_in_1+",");
print ("\t " +var_in_2+",");
print ("");
print ("\t " + var_out_1);
print (");");

print("input clk_in;");
print("input "+var_in_1+";");
print("input [1:0]"+var_in_2+";");

print ("input [3:0]"+var_in_x+";")
print ("input [3:0]"+var_in_y+";")

print ("output reg [1:0]"+var_out_1+";")




# genero i 100 registri di memoria diversi
print ("// registri del tipo sta_X(posizione x)_Y(posizione y)")
for j in range (0,10):
	for i in range (0,10):
		print ("reg [1:0] stat_X"+str(i)+"_Y"+str(j)+" = 2'b00;")

print ("always @ (posedge clk_in)")
print ("begin")


print("\t if ("+var_in_1+")")
print ("\t begin")
for j in range (0,10):
	for i in range (0,10):
		if j == 0 and i == 0:
			print ("\t \t if", end='')
		else:
			print("\t\t else if", end='')
		print ("("+var_in_x+" == 4'd"+str(i)+" && "+var_in_y+" == 4'd"+str(j)+")")
		print ("\t\t begin")
		print ("\t\t\t stat_X"+str(i)+"_Y"+str(j)+" ="+var_in_2+";")
		print ("\t\t end")

print("\t end")

print ("\t else")
print ("\t begin")

for j in range (0,10):
	for i in range (0,10):
		if j == 0 and i == 0:
			print ("\t\t if", end='')
		else:
			print("\t\t else if", end='')
		print ("("+var_in_x+" == 4'd"+str(i)+" && "+var_in_y+" == 4'd"+str(j)+")")
		print ("\t\t begin")
		print ("\t\t\t "+var_out_1+"= stat_X"+str(i)+"_Y"+str(j)+";")
		print ("\t\t end")
print ("\t end")
print ("end")
print ("endmodule")
