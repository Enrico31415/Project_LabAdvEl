# Programma che genera lo script che tiene traccia della memoria.
# genera cellMemory.v

#stringa di output
var_out_1 = "status"


#stringe di input
var_in_x = "mouse_cell_x"
var_in_y = "mouse_cell_y"
var_in_x_p = "pointer_cell_x"
var_in_y_p = "pointer_cell_y"
var_in_play_status = "play_status"
var_in_direction = "direction"
var_in_ship_dimension = "dimension"

var_out_2 = "status_pointed_cell"
var_out_3 = "ship_placed"


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
print ("\t " +var_in_play_status+", //stato attuale del gioco (schieramento, shooting, etc)");
print ("\t " +var_in_direction+", //direzione della nave ");
print ("\t " +var_in_ship_dimension+", //dimensione della nave ");
print ("");
print ("\t " + var_out_1+", //stato ritornato dal mouse");
print ("\t " + var_out_2+", //stato ritornato dal puntantore");
print ("\t " + var_out_3+" //se ha scritto la nave in memoria");
print (");");

print("input clk_in;");
print("input "+var_in_1+";");
print("input [4:0] "+var_in_2+";");
print("input [2:0] "+var_in_play_status+";");

print("input "+var_in_direction+";");
print ("input [3:0] "+var_in_x+";")
print ("input [3:0] "+var_in_y+";")
print ("input [3:0] "+var_in_x_p+";")
print ("input [3:0] "+var_in_y_p+";")
print ("input [3:0] "+var_in_ship_dimension+";")

print ("output reg [4:0] "+var_out_1+";")
print ("output reg [4:0] "+var_out_2+";")
print ("output reg "+var_out_3+" = 0;")




# genero i 100 registri di memoria diversi
print ("// registri del tipo stat_X(posizione x)_Y(posizione y)")
for j in range (0,10):
	for i in range (0,10):
		print ("reg [4:0] stat_X"+str(i)+"_Y"+str(j)+" = 5'b00000;")

print("// operazioni di scrittura/lettura dal mouse")
print ("always @ (negedge clk_in)")
print ("begin")	
print("//se e' il turno del giocatore")
print("\tif ("+var_in_play_status+"== 2'b01)")
print("\tbegin")
for j in range (0,10):
	for i in range (0,10):
		if j == 0 and i == 0:
			print ("\t\tif", end='')
		else:
			print("\t\telse if", end='')
		print ("("+var_in_x+" == 4'd"+str(i)+" && "+var_in_y+" == 4'd"+str(j)+")")
		print ("\t\tbegin")
		print ("\t\t\tif("+var_in_1+")")
		print ("\t\t\tbegin")
		print ("\t\t\t\tstat_X"+str(i)+"_Y"+str(j)+" ="+var_in_2+";")
		print ("\t\t\tend")
		print ("\t\t\t"+var_out_1+"=stat_X"+str(i)+"_Y"+str(j)+";")
		print ("\t\tend")
print ("\tend")



print ("\t//se e' il turnio dello schieramento")
print("\tif ("+var_in_play_status+"== 2'b00)")
print("\tbegin")
for i in range(0,9):
	for j in range(0,9):
		print("\t\t//controllo la posizione: capisco in che cella sono")
		if j == 0 and i == 0:
			print ("\t\tif", end='')
		else:
			print("\t\telse if", end='')
		print ("("+var_in_x+" == 4'd"+str(i)+" && "+var_in_y+" == 4'd"+str(j)+")")
		print("\t\tbegin")
		print("\t\t\t//sbianco tutto attorno")
		for q in range(-5,5):
			for r in range(-5,5):
				if (i+q in range(0,10) and j+r in range(0,10)):
					print("\t\t\t if(stat_X"+str(i+q)+"_Y"+str(j+r)+" == 5'd1)")
					print("\t\t\t\t stat_X"+str(i+q)+"_Y"+str(j+r)+" =0;")
		print("\t\t\t//controllo la direzione")
		print("\t\t\tif(!"+var_in_direction+")")
		print("\t\t\tbegin")
		print("\t\t\t\t//controllo la dimensione della nave")
		print("\t\t\t\tcase ("+var_in_ship_dimension+")")
		# stampo il case delle dimensioni
		for k in  ([2,3,4,5]):
			print("\t\t\t\t\t4'd"+str(k)+":")
			print("\t\t\t\t\tbegin")
			# genero le condizioni in funzione di k (dim nave)
			l = 1
			print ("\t\t\t\t\t\t//se e' libera")
			print("\t\t\t\t\t\tif(stat_X"+str(i)+"_Y"+str(j)+" == 5'd0)")
			print("\t\t\t\t\t\tbegin")
			print("\t\t\t\t\t\t\t//pre-occupo")
			print("\t\t\t\t\t\t\tstat_X"+str(i)+"_Y"+str(j)+"= 5'd1;")
			print("\t\t\t\t\t\tend")
			while l < k:
				# non devo sforare i registri
				if (i+l)<=9:
					print("\t\t\t\t\t\tif("+var_in_1+")");
					print("\t\t\t\t\t\tbegin")
					print("\t\t\t\t\t\t\tstat_X"+str(i+l)+"_Y"+str(j)+"= 5'd2;")
					print("\t\t\t\t\t\tend")
					print("\t\t\t\t\t\telse if(stat_X"+str(i+l)+"_Y"+str(j)+" == 5'd0)")
					print("\t\t\t\t\t\tbegin")
					print("\t\t\t\t\t\t\t//pre-occupo")
					print("\t\t\t\t\t\t\tstat_X"+str(i+l)+"_Y"+str(j)+"= 5'd1;")
					print("\t\t\t\t\t\tend")	
				else:
					# vado fuori volutamente dal while
					l = l + 10
				l = l +1
			print("\t\t\t\t\tend")#(interno al case)
		print("\t\t\t\tendcase")
		print("\t\t\tend")#(direction)
		print("\t\t\telse")
		print("\t\t\tbegin")
		print("\t\t\t\t//controllo la dimensione della nave")
		print("\t\t\t\tcase ("+var_in_ship_dimension+")")
		# stampo il case delle dimensioni
		for k in  ([2,3,4,5]):
			print("\t\t\t\t\t4'd"+str(k)+":")
			print("\t\t\t\t\tbegin")
			# genero le condizioni in funzione di k (dim nave)
			l = 1
			print ("\t\t\t\t\t\t//se e' libera")
			print("\t\t\t\t\t\tif(stat_X"+str(i)+"_Y"+str(j)+" == 5'd0)")
			print("\t\t\t\t\t\tbegin")
			print("\t\t\t\t\t\t\t//pre-occupo")
			print("\t\t\t\t\t\t\tstat_X"+str(i)+"_Y"+str(j)+"= 5'd1;")
			print("\t\t\t\t\t\tend")
			while l < k:
				# non devo sforare i registri
				if (j+l)<=9:
					print("\t\t\t\t\t\tif(stat_X"+str(i)+"_Y"+str(j+l)+" == 5'd0)")
					print("\t\t\t\t\t\tbegin")
					print("\t\t\t\t\t\t\t//pre-occupo")
					print("\t\t\t\t\t\t\tstat_X"+str(i)+"_Y"+str(j+l)+"= 5'd1;")
					print("\t\t\t\t\t\tend")	
				else:
					# vado fuori volutamente dal while
					l = l + 10
				l = l +1
			print("\t\t\t\t\tend")#(interno al case)
		print("\t\t\t\tendcase")
		print("\t\t\tend")#(direction)




		print("\t\tend")#(posizione)
print("\tend")
print("end")


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
