# Programma che genera lo script che tiene traccia della memoria.
# genera cellMemory.v

dim_x = 8
dim_y = 8

def shipDimension (direction):
    if(direction == 0):
        print("\t\t\tcase("+var_in_ship_dimension+")")
        for i in (2,3,4):
            j = 0
            k = 0
            l = 0
            print("\t\t\t4'd"+str(i)+":" )
            print("\t\t\tbegin")
            #controllo di essere nelle celle, non posso sforare il vettore
            print("\t\t\t\tif ("+var_in_x+"+4'd"+str(i)+" <= 4'd"+str(dim_x)+")//se sono dentro il range")
            print("\t\t\t\tbegin")
            print("\t\t\t\t\t//pre piazzo")
            print("\t\t\t\t\tif (!"+var_in_1+")")
            print("\t\t\t\t\tbegin")
            while k < i:
                if k == 0:
                    print("\t\t\t\t\t\tif("+var_memory+"["+var_in_x+"]["+var_in_y+"] == 4'd0)")
                    print("\t\t\t\t\t\tbegin")
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"] = 4'd1;")
                    print("\t\t\t\t\t\tend")
                    print("\t\t\t\t\t\telse if("+var_memory+"["+var_in_x+"]["+var_in_y+"] == 4'd2)")
                    print("\t\t\t\t\t\tbegin")
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"] = 4'd3;")
                    print("\t\t\t\t\t\tend")
                else:
                    print("\t\t\t\t\t\tif("+var_memory+"["+var_in_x+"+4'd"+str(k)+"]["+var_in_y+"] == 4'd0)")
                    print("\t\t\t\t\t\tbegin")
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"+4'd"+str(k)+"]["+var_in_y+"] = 4'd1;")
                    print("\t\t\t\t\t\tend")
                    print("\t\t\t\t\t\telse if("+var_memory+"["+var_in_x+"+4'd"+str(k)+"]["+var_in_y+"] == 4'd2)")
                    print("\t\t\t\t\t\tbegin")
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"+4'd"+str(k)+"]["+var_in_y+"] = 4'd3;")
                    print("\t\t\t\t\t\tend")
                k +=1
            print("\t\t\t\t\tend//write enable")
            print("\t\t\t\t\telse")
            print("\t\t\t\t\tbegin")
            #se piazzo la nave cio'e ho we = 1
            print("\t\t\t\t\t\tif("+var_memory+"["+var_in_x+"]["+var_in_y+"] == 4'd0 //se è pre allocata")
            while l < (i-1):
                print("\t\t\t\t\t\t\t\t&& "+var_memory+"["+var_in_x+"+4'd"+str(l+1)+"]["+var_in_y+"] == 4'd0")
                #print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"+4'd"+str(l)+"]["+var_in_y+"] = 5'd2;")
                l +=1
            l = 0
            print("\t\t\t\t\t\t\t)")
            print("\t\t\t\t\t\tbegin // la piazzo")
            while l < (i):
                if l == 0:
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"] = 4'd2;")
                else:
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"+4'd"+str(l)+"]["+var_in_y+"] = 4'd2;")
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
                if (j == 0):
                    print("\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"] = 4'd4;")
                else:
                    print("\t\t\t\t\t"+var_memory+"["+var_in_x+"+4'd"+str(j)+"]["+var_in_y+"] = 4'd4;")
                j +=1
            print("\t\t\t\tend")
            print("\t\t\tend")
        print("\t\t\tendcase")

    else:
        print("\t\t\tcase("+var_in_ship_dimension+")")
        for i in (2,3,4):
            j = 0
            k = 0
            l = 0
            print("\t\t\t4'd"+str(i)+":" )
            print("\t\t\tbegin")
            #controllo di essere nelle celle, non posso sforare il vettore
            print("\t\t\t\tif ("+var_in_y+"+4'd"+str(i)+" <= 4'd"+str(dim_y)+")//se sono dentro il range")
            print("\t\t\t\tbegin")
            print("\t\t\t\t\t//pre piazzo")
            print("\t\t\t\t\tif (!"+var_in_1+")")
            print("\t\t\t\t\tbegin")
            while k < i:
                if (k == 0):
                    print("\t\t\t\t\t\tif("+var_memory+"["+var_in_x+"]["+var_in_y+"] == 4'd0)")
                    print("\t\t\t\t\t\tbegin")
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"] = 4'd1;")
                    print("\t\t\t\t\t\tend")
                    print("\t\t\t\t\t\telse if("+var_memory+"["+var_in_x+"]["+var_in_y+"] == 4'd2)")
                    print("\t\t\t\t\t\tbegin")
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"] = 4'd3;")
                    print("\t\t\t\t\t\tend")
                else:
                    print("\t\t\t\t\t\tif("+var_memory+"["+var_in_x+"]["+var_in_y+"+4'd"+str(k)+"] == 4'd0)")
                    print("\t\t\t\t\t\tbegin")
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"+4'd"+str(k)+"] = 4'd1;")
                    print("\t\t\t\t\t\tend")
                    print("\t\t\t\t\t\telse if("+var_memory+"["+var_in_x+"]["+var_in_y+"+4'd"+str(k)+"] == 4'd2)")
                    print("\t\t\t\t\t\tbegin")
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"+4'd"+str(k)+"] = 4'd3;")
                    print("\t\t\t\t\t\tend")
                k +=1
            print("\t\t\t\t\tend//write enable")
            print("\t\t\t\t\telse")
            print("\t\t\t\t\tbegin")
            #se piazzo la nave cio'e ho we = 1
            print("\t\t\t\t\t\tif("+var_memory+"["+var_in_x+"]["+var_in_y+"] == 4'd0 //se è pre allocata")
            while l < (i-1):
                print("\t\t\t\t\t\t\t\t&& "+var_memory+"["+var_in_x+"]["+var_in_y+"+4'd"+str(l+1)+"] == 4'd0")
                #print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"+4'd"+str(l)+"]["+var_in_y+"] = 5'd2;")
                l +=1
            l = 0
            print("\t\t\t\t\t\t\t)")
            print("\t\t\t\t\t\tbegin // la piazzo")
            while l < (i):
                if l == 0:
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"] = 4'd2;")
                else:
                    print("\t\t\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"+4'd"+str(l)+"] = 4'd2;")
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
                if j ==0 :
                    print("\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"] = 4'd4;")
                else:
                    print("\t\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"+4'd"+str(j)+"] = 4'd4;")
                j +=1
            print("\t\t\t\tend")
            print("\t\t\tend")
        print("\t\t\tendcase")



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
print ("\t " + var_out_1+", //stato ritornato dal mouse");
print ("\t " + var_out_2+", //stato ritornato dal puntantore");
print ("\t " + var_out_3+" //se ha scritto la nave in memoria");
print (");");

print("input clk_in;");
print("input "+var_in_1+";");
print("input [3:0] "+var_in_2+";");
print("input [1:0] "+var_in_play_status+";");

print("input "+var_in_direction+";");
print ("input [2:0] "+var_in_x+";")
print ("input [2:0] "+var_in_y+";")
print ("input [2:0] "+var_in_x_p+";")
print ("input [2:0] "+var_in_y_p+";")
print ("input [3:0] "+var_in_ship_dimension+";")



print ("output reg [3:0] "+var_out_1+";")
print ("output reg [3:0] "+var_out_2+";")
print ("output reg "+var_out_3+" = 0;")


print ("// genero la memoria")
print ("reg [3:0] "+var_memory+" [0:"+str(dim_x-1)+"][0:"+str(dim_y-1)+"];")

print ("//la inizializzo a zero")
print ("integer i, j;")
print ("initial begin")
print ("\tfor (i = 0; i <= "+str(dim_x-1)+"; i = i + 1)")
print ("\tbegin")
print ("\t\tfor (j = 0; j <= "+str(dim_y-1)+"; j = j + 1)")
print ("\t\tbegin")
print ("\t\t\t "+var_memory+"[i][j] = 4'd0;")
print ("\t\tend")
print ("\tend")
print ("end")





print("// operazioni di scrittura/lettura dal mouse")
print ("always @ (negedge clk_in)")
print ("begin")
print ("\t"+var_out_3+" = 0;")
print("//se e' il turno del giocatore")
print("\tif ("+var_in_play_status+"== 2'd2)")
print("\tbegin")


print ("\t\t\tif("+var_in_1+")")
print ("\t\t\tbegin")
print ("\t\t\t\t"+var_memory+"["+var_in_x+"]["+var_in_y+"] ="+var_in_2+";")
print ("\t\t\tend")
print ("\t\t\t"+var_out_1+"="+var_in_2+";")
print ("\t\tend")
print("\telse if ("+var_in_play_status+"== 2'd1)")
print("\tbegin")
print ("\t\t // piallo gli stati temporanei")
print ("\t\tfor (i = 0; i <= "+str(dim_x-1)+"; i = i + 1)")
print ("\t\tbegin")
print ("\t\t\tfor (j = 0; j <= "+str(dim_y-1)+"; j = j + 1)")
print ("\t\t\tbegin")
print ("\t\t\t\tif ("+var_memory+"[i][j] == 4'd1)")
print ("\t\t\t\t "+var_memory+"[i][j] = 4'd0;")
print ("\t\t\t\telse if ("+var_memory+"[i][j] == 4'd3 )")
print ("\t\t\t\t "+var_memory+"[i][j] = 5'd2;")
print ("\t\t\t\telse if ("+var_memory+"[i][j] == 4'd4 )")
print ("\t\t\t\t "+var_memory+"[i][j] = 4'd0;")
print ("\t\t\tend")
print ("\t\tend")
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

