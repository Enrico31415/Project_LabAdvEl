# Programma che genera la posizione della matrice, data la risoluzione dello schermo.
# genera pos_to_quadrant.v

#stringa di output
var_out_1 = "cell_x"
var_out_2 = "cell_y"


#stringe di input
var_in_x = "pos_x"
var_in_y = "pos_y"


#periodo tipico
period_y = 48
period_x = 64

print ("// modulo autogenerato, non modificare. Qualsiasi modifica sarà cancellata all successiva esecuzione");
print ("// generato da "+__file__);

print ("module pos_to_quadrant(")
print ("clk_in,");
print (var_in_x+",");
print (var_in_y+",");
print ("");
print (var_out_1+",");
print (var_out_2);
print (");");

print("input clk_in;");

print ("input [7:0]"+var_in_x+";")
print ("input [7:0]"+var_in_y+";")

print ("output reg [3:0]"+var_out_1+";")
print ("output reg [3:0]"+var_out_2+";")

print ("always @ (posedge clk_in)")
print ("begin")
for j in range (0,10):
	for i in range (0,10):
		if i == 0 and j == 0:
			 print("\t if", end ='') 
		else:
			 print("\t else if", end='')
		print ("("+var_in_x+"< 8'd"+ str(period_x*( i + 1 ))+" && "+var_in_x+">= 8'd"+str(period_x*i)+" &&  "+var_in_y+"< 8'd"+str(period_y*(j+1))+" && "+ var_in_y+">= 8'd"+ str(period_y*j)+ ")")
		print ("\tbegin")
		print ("\t\t"+var_out_2+" = 4'd"+str(i)+";")
		print ("\t\t"+var_out_1+" = 4'd"+str(j)+";")
		print ("\tend")
print ("\tend")
print ("endmodule")
