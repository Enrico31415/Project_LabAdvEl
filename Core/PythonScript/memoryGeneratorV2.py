# Programma che genera lo script che tiene traccia della memoria.
# genera cellMemory.v

def shipDimension (direction):
    if(direction == 0):
        print("\t\t\tcase("+var_in_ship_dimension+")")
        for i in (2,3,4,5):
            j = 0
            k = 0
            l = 0
            print("\t\t\t4'd"+str(i)+":" )
            print("\t\t\tbegin")
            #controllo di essere nelle celle, non posso sforare il vettore
            print("\t\t\t\tif ("+var_in_x+"+4'd"+str(i)+" <= 4'd10)//se sono dentro il range")
            print("\t\t\t\tbegin")
            print("\t\t\t\t\t//pre piazzo")
            print("\t\t\t\t\tif (!"+var_in_1+")")
            print("\t\t\t\t\tbegin")
            while k < i:
                print("\t\t\t\t\t\tif("+var_memory+"["+var_in_x+"+4'd"+str(k)+"]["+var_in_y+"] == 5'd0)")
                print("\t\t\t\t\t\tbegin")
                print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"+4'd"+str(k)+"]["+var_in_y+"] = 5'd1;")
                print("\t\t\t\t\t\tend")
                print("\t\t\t\t\t\telse if("+var_memory+"["+var_in_x+"+4'd"+str(k)+"]["+var_in_y+"] == 5'd2)")
                print("\t\t\t\t\t\tbegin")
                print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"+4'd"+str(k)+"]["+var_in_y+"] = 5'd3;")
                print("\t\t\t\t\t\tend")
                k +=1
            print("\t\t\t\t\tend//write enable")
            print("\t\t\t\t\telse")
            print("\t\t\t\t\tbegin")
            #se piazzo la nave cio'e ho we = 1
            print("\t\t\t\t\t\tif("+var_memory+"["+var_in_x+"+4'd"+str(l)+"]["+var_in_y+"] == 5'd1", end = '')
            while l < (i-1):
                print("\t\t\t\t\t\t\t\t&&"+var_memory+"["+var_in_x+"+4'd"+str(l)+"]["+var_in_y+"] == 5'd1")
                #print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"+4'd"+str(l)+"]["+var_in_y+"] = 5'd2;")
                l +=1
            l = 0
            print("\t\t\t\t\t\t\t)")
            print("\t\t\t\t\t\tbegin")
            while l < (i-1):
                print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"+4'd"+str(l)+"]["+var_in_y+"] = 5'd2;")
                l+=1
            print ("\t\t\t\t\t\t\t"+var_out_3+" = 1;")
            print("\t\t\t\t\t\tend")
            print("\t\t\t\t\tend")
            print("\t\t\t\tend")
            print("\t\t\t\telse")
            print("\t\t\t\tbegin")
            #se ho sforato non posso scrivere
            print("\t\t\t\t\t//metto che non si puo' scrivere")
            while j < i:
                print("\t\t\t\t\t"+var_memory+"["+var_in_x+"+4'd"+str(j)+"]["+var_in_y+"] = 5'd3;")
                j +=1
            print("\t\t\t\tend")
            print("\t\t\tend")
        print("\t\t\tendcase")

    else:
        print("\t\t\t //test1")


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
var_in_turn_0 = "turn_ia_placing"
var_in_turn_1 = "turn_player_placing"
var_in_turn_2 = "turn_ia_shoot"
var_in_turn_3 = "turn_player_shoot"

var_out_2 = "status_pointed_cell"
var_out_3 = "ship_placed"


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
print ("\t " +var_in_play_status+", //stato attuale del gioco (schieramento, shooting, etc)");
print ("\t " +var_in_direction+", //direzione della nave ");
print ("\t " +var_in_ship_dimension+", //dimensione della nave ");
print("")
print ("\t " +var_in_turn_0+", //stati di gioco ");
print ("\t " +var_in_turn_1+", //stati di gioco ");
print ("\t " +var_in_turn_2+", //stati di gioco ");
print ("\t " +var_in_turn_3+", //stati di gioco ");
print ("");
print ("\t " + var_out_1+", //stato ritornato dal mouse");
print ("\t " + var_out_2+", //stato ritornato dal puntantore");
print ("\t " + var_out_3+" //se ha scritto la nave in memoria");
print (");");

print("input clk_in;");
print("input "+var_in_1+";");
print("input [4:0] "+var_in_2+";");
print("input [1:0] "+var_in_play_status+";");

print("input "+var_in_direction+";");
print ("input [3:0] "+var_in_x+";")
print ("input [3:0] "+var_in_y+";")
print ("input [3:0] "+var_in_x_p+";")
print ("input [3:0] "+var_in_y_p+";")
print ("input [3:0] "+var_in_ship_dimension+";")


print ("input [1:0] " +var_in_turn_0+";")
print ("input [1:0] " +var_in_turn_1+";")
print ("input [1:0] " +var_in_turn_2+";")
print ("input [1:0] " +var_in_turn_3+";")

print ("output reg [4:0] "+var_out_1+";")
print ("output reg [4:0] "+var_out_2+";")
print ("output reg "+var_out_3+" = 0;")


print ("// genero la memoria")
print ("reg [5:0] "+var_memory+" [0:9][0:9];")

print ("//la inizializzo a zero")
print ("integer i, j;")
print ("initial begin")
print ("\tfor (i = 0; i <= 9; i = i + 1)")
print ("\tbegin")
print ("\t\tfor (j = 0; j <= 9; j = j + 1)")
print ("\t\tbegin")
print ("\t\t\t "+var_memory+"[i][j] = 5'b0;")
print ("\t\tend")
print ("\tend")
print ("end")





print("// operazioni di scrittura/lettura dal mouse")
print ("always @ (negedge clk_in)")
print ("begin")
print ("\t"+var_out_3+" = 0;")
print ("\tfor (i = 0; i <= 9; i = i + 1)")
print ("\tbegin")
print ("\t\tfor (j = 0; j <= 9; j = j + 1)")
print ("\t\tbegin")
print ("\t\t\tif ("+var_memory+"[i][j] == 5'd1 || "+var_memory+"[i][j] == 5'd3 )")
print ("\t\t\t "+var_memory+"[i][j] = 5'b0;")
print ("\t\tend")
print ("\tend")
print("//se e' il turno del giocatore")
print("\tif ("+var_in_play_status+"== "+var_in_turn_3+")")
print("\tbegin")
print ("\t\t\tif("+var_in_1+")")
print ("\t\t\tbegin")
print ("\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"] ="+var_in_2+";")
print ("\t\t\tend")
print ("\t\t\t"+var_out_1+"="+var_in_2+";")
print ("\t\tend")
print("\telse if ("+var_in_play_status+"== "+var_in_turn_1+")")
print("\tbegin")
print("\t\t//controllo la direzione")
print("\t\tif(!"+var_in_direction+")")
print("\t\tbegin")
print("\t\t\t//case sulla dimensione della nave")
shipDimension(0)
print("\t\tend")
print("\t\telse")
print("\t\tbegin")
shipDimension(1)
print("\t\tend")
print("\tend")
print ("end //always")


print("// operazioni di read, fatte per plottare a schermo")
print ("always @ (posedge clk_in)")
print ("begin")
print ("\t"+var_out_2+"= "+var_memory+"["+var_in_x_p+"]["+var_in_y_p+"];")
print ("end")
print ("endmodule")

















