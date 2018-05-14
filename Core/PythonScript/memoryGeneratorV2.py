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

var_memory = "memory"


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
print("")
print ("");
print ("\t " + var_out_1+", //stato ritornato dal mouse");
print ("\t " + var_out_2+" //stato ritornato dal puntantore");
print (");");

print("input clk_in;");
print("input "+var_in_1+";");
print("input [4:0] "+var_in_2+";");

print ("input [3:0] "+var_in_x+";")
print ("input [3:0] "+var_in_y+";")
print ("input [3:0] "+var_in_x_p+";")
print ("input [3:0] "+var_in_y_p+";")


print ("output reg [4:0] "+var_out_1+";")
print ("output reg [4:0] "+var_out_2+";")


print ("// genero la memoria")
print ("reg [4:0] "+var_memory+" [0:9][0:9];")

print ("//la inizializzo a zero")
print ("integer i, j;")
print ("initial begin")
print ("\tfor (i = 0; i <= 9; i = i + 1)")
print ("\tbegin")
print ("\t\tfor (j = 0; j <= 9; j = j + 1)")
print ("\t\tbegin")
print ("\t\t\t "+var_memory+"[i][j] = 5'd0;")
print ("\t\tend")
print ("\tend")
print ("end")





print("// operazioni di scrittura/lettura dal mouse")
print ("always @ (negedge clk_in)")
print ("begin")
print ("\tif("+var_in_1+")")
print ("\tbegin")
print ("\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"] = "+var_in_2+";")
print ("\tend")
print ("\t"+var_out_1+ " = " +var_memory+"["+var_in_x+"]["+var_in_y+"];")
print ("end //always")


print("// operazioni di read, fatte per plottare a schermo")
print ("always @ (posedge clk_in)")
print ("begin")
print ("\t"+var_out_2+"= "+var_memory+"["+var_in_x_p+"]["+var_in_y_p+"];")
print ("end")
print ("endmodule")


















