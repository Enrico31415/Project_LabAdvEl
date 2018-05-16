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

dim_x = 8;
dim_y = 8;


#periodo tipico

print ("// modulo autogenerato, non modificare. Qualsiasi modifica sarà cancellata all successiva esecuzione");
print ("// generato da "+__file__);

print ("module cell_io(")
print (" \t clk_in,");
print ("\t " +var_in_x+", //cella del mouse x ")
print ("\t " +var_in_y+", //cella del mouse y")
print ("\t " +var_in_x_p+", //cella del puntatore(pennello) x")
print ("\t " +var_in_y_p+", //idem y")
print ("\t " +var_in_1+", //Write enable, se deve scrivere")
print ("\t " +var_in_2+", //valore da scrivere")
print ("\t " +var_in_play_status+", //stato attuale del gioco (schieramento, shooting, etc)")
print ("\t " +var_in_direction+", //direzione della nave ")
print ("\t " +var_in_ship_dimension+", //dimensione della nave ")
print ("");
print ("\t " + var_out_1+", //stato ritornato dal mouse");
print ("\t " + var_out_2+", //stato ritornato dal puntantore");
print ("\t " + var_out_3+" //se ha scritto la nave in memoria");
print (");");

print("input clk_in;");
print("input "+var_in_1+";");
print("input [3:0] "+var_in_2+";");
print("input [3:0] "+var_in_play_status+";");


print("input "+var_in_direction+";");
print ("input [4:0] "+var_in_x+";")
print ("input [4:0] "+var_in_y+";")
print ("input [4:0] "+var_in_x_p+";")
print ("input [4:0] "+var_in_y_p+";")
print ("input [3:0] "+var_in_ship_dimension+";")

print ("output reg [3:0] "+var_out_1+";")
print ("output reg [3:0] "+var_out_2+";")
print ("output reg "+var_out_3+" = 0;")




# genero i 100 registri di memoria diversi
print ("// registri del tipo stat_X(posizione x)_Y(posizione y)")
for j in range (0,dim_x):
    for i in range (0,dim_y):
      print ("reg [3:0] stat_X"+str(i)+"_Y"+str(j)+" = 4'd0;")

print("// operazioni di scrittura/lettura dal mouse")
print ("always @ (negedge clk_in)")
print ("begin")
print("//se e' il turno del giocatore")
print("\tif ("+var_in_play_status+"== 2'b01)")
print("\tbegin")
for j in range (0,dim_x):
    for i in range (0,dim_y):
        if j == 0 and i == 0:
                print ("\t\tif", end='')
        else:
                print("\t\telse if", end='')
        print ("("+var_in_x+" == 5'd"+str(i)+" && "+var_in_y+" == 5'd"+str(j)+")")
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
print("\t\t"+var_out_3+" = 0;")
print("\t\t//se sono stati temporanei, li piallo")
for q in range(0,dim_x):
    for r in range(0,dim_y):
        print("\t\t if(stat_X"+str(q)+"_Y"+str(r)+" == 4'd1)")
        print("\t\t\t stat_X"+str(q)+"_Y"+str(r)+" =4'd0;")
        print("\t\t else if(stat_X"+str(q)+"_Y"+str(r)+" == 4'd3)")
        print("\t\t\t stat_X"+str(q)+"_Y"+str(r)+" =4'd2;")
for i in range(0,dim_x):
    for j in range(0,dim_y):
        print("\t\t//controllo la posizione: capisco in che cella sono")
        if j == 0 and i == 0:
            print ("\t\tif", end='')
        else:
            print("\t\telse if", end='')
        print ("("+var_in_x+" == 5'd"+str(i)+" && "+var_in_y+" == 5'd"+str(j)+")")
        print("\t\tbegin", end='')
        print("//controllo la direzione")
        for n in range (0,2):# per le direzioni
            if n == 0:
                print("\t\t\tif(!"+var_in_direction+") //controllo la direzione: orrizontale")
            else:
                print("\t\t\telse //direzione verticale")
            print("\t\t\tbegin")
            #controllo se sto dentro
            if n == 0:
                print("\t\t\t\tif ("+var_in_ship_dimension+"+ "+var_in_x+" < 4'd"+str(dim_y)+")//se sono dentro")
            else:
                print("\t\t\t\tif ("+var_in_ship_dimension+"+ "+var_in_y+" < 4'd"+str(dim_x)+")//se sono dentro")
            print("\t\t\t\tbegin")
            print("\t\t\t\t\tcase ("+var_in_ship_dimension+")")
            # stampo il case delle dimensioni
            for k in  ([2,3,4]):
                print("\t\t\t\t\t\t4'd"+str(k)+":")
                print("\t\t\t\t\t\tbegin")
                # genero le condizioni in funzione di k (dim nave)
                # genero la condizione di higlihting
                m = 0
                print("\t\t\t\t\t\t\tif((!"+var_in_1+")", end = '')
                while m < k:
                    if (i+m)<dim_x and (j+m)<dim_y:
                        if n == 0:
                            print("&&(stat_X"+str(i+m)+"_Y"+str(j)+" == 4'd0) \n\t\t\t\t\t\t\t\t\t\t", end ='');
                        else:
                            print("&&(stat_X"+str(i)+"_Y"+str(j+m)+" == 4'd0) \n\t\t\t\t\t\t\t\t\t\t", end ='');
                    else:
                        # vado fuori volutamente dal while
                        m = m + 10
                    m = m + 1
                print(")//se posso piazzare la nave")
                m = 0
                print("\t\t\t\t\t\t\tbegin")
                while m < k:
                    if (i+m)<dim_x and (j+m)<dim_y:
                        if n == 0:
                            print("\t\t\t\t\t\t\t\tstat_X"+str(i+m)+"_Y"+str(j)+"= 4'd1;")
                        else:
                            print("\t\t\t\t\t\t\t\tstat_X"+str(i)+"_Y"+str(j+m)+"= 4'd1;")
                    else:
                        # vado fuori volutamente dal while
                        m = m + 10
                    m = m + 1
                print("\t\t\t\t\t\t\tend")#condizioni delle celle




                # se non posso piazzarla
                m = 0
                while m < k:
                    if (i+m)<dim_x and (j+m)<dim_y:
                        if n == 0:
                            print("\t\t\t\t\t\t\tif(stat_X"+str(i+m)+"_Y"+str(j)+" == 4'd2)")
                            print("\t\t\t\t\t\t\t\tstat_X"+str(i+m)+"_Y"+str(j)+"= 4'd3;")

                        else:
                            print("\t\t\t\t\t\t\tif(stat_X"+str(i)+"_Y"+str(j+m)+" == 4'd2)")
                            print("\t\t\t\t\t\t\t\tstat_X"+str(i)+"_Y"+str(j+m)+"= 4'd3;")
                    else:
                        # vado fuori volutamente dal while
                        m = m + 10
                    m = m + 1
                m = 0




                # genero la condizione di posizionamento
                m = 0
                print("\t\t\t\t\t\t\tif(("+var_in_1+")", end = '')
                while m < k:
                    if (i+m)<dim_x and (j+m)<dim_y:
                        if n == 0:
                            print("&&(stat_X"+str(i+m)+"_Y"+str(j)+" == 4'd0) \n\t\t\t\t\t\t\t\t\t\t", end ='');
                        else:
                            print("&&(stat_X"+str(i)+"_Y"+str(j+m)+" == 4'd0) \n\t\t\t\t\t\t\t\t\t\t", end ='');
                    else:
                        # vado fuori volutamente dal while
                        m = m + 10
                    m = m + 1
                print(")//se posso piazzare la nave, e devo piazzarla")
                m = 0
                print("\t\t\t\t\t\t\tbegin")
                while m < k:
                    if (i+m)<dim_x and (j+m)<dim_y:
                        if n == 0:
                            print("\t\t\t\t\t\t\t\tstat_X"+str(i+m)+"_Y"+str(j)+"= 4'd2;")
                        else:
                            print("\t\t\t\t\t\t\t\tstat_X"+str(i)+"_Y"+str(j+m)+"= 4'd2;")
                    else:
                        # vado fuori volutamente dal while
                        m = m + 10
                    m = m + 1
                print("\t\t\t\t\t\t\t\t"+var_out_3+"=1;")
                print("\t\t\t\t\t\t\tend")#condizioni delle celle

                print("\t\t\t\t\t\tend//interno case")#(interno al case)
            print("\t\t\t\t\tendcase")
            print("\t\t\t\tend // if di sovradimensione")
            #se la nave non ci sta, devo gestire la quesura
            print("\t\t\t\telse //se la nave supera la dimensione: non ci sta")
            print("\t\t\t\tbegin")
            print("\t\t\t\t\t stat_X"+str(i)+"_Y"+str(j)+"= 4'd3;")
            print("\t\t\t\tend")
            print("\t\t\tend//direzione")
        print("\t\tend//posizione")#(posizione)
print("\tend//posizione")
print("end")


print("// operazioni di read, fatte per plottare a schermo")
print ("always @ (posedge clk_in)")
print ("begin")
for j in range (0,dim_x):
    for i in range (0,dim_y):
        if j == 0 and i == 0:
            print ("\tif", end='')
        else:
            print("\telse if", end='')
        print ("("+var_in_x_p+" == 5'd"+str(i)+" && "+var_in_y_p+" == 5'd"+str(j)+")")
        print ("\t\t"+var_out_2+"=stat_X"+str(i)+"_Y"+str(j)+";")
print ("end")
print ("endmodule")
