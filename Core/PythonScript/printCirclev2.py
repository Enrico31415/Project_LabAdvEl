from PIL import Image, ImageDraw
x_dim = 64
y_dim = 48
delta = 10
image = Image.new('1', (x_dim, y_dim)) 
draw = ImageDraw.Draw(image)
#ellisse di dimenzion (0,0)->(63,47) di 1
draw.ellipse((0, 0, x_dim-1, y_dim-1), outline =1, fill = 1)
#ellisse più piccola di 2
draw.ellipse((0+delta, 0+delta, x_dim-1-delta, y_dim-1-delta), outline =2, fill = 2)
#diventa lista
image = list(image.getdata())
print ("//File autogenerato da "+__file__);
print ("//non modificare! Qualsiasi modifica potrebbe essere cancellata all'esecuzione successiva")
print("")
print("`define d_circle \t "+str(x_dim*y_dim)+"'b", end = '')
#sistemo l'ellisse interna con gli zeri
for i in range(0,len(image)):
	if(image[i] == 2):
		image[i] = 0
# stampo rimuovendo il pistolotto della lista
print(''.join(map(str, image)))

#per stampare a schermo formattato
#matrix = [ image[i:i+x_dim] for i in range(0,len(image),x_dim) ]
#for l in matrix:
#	print(''.join(map(str, l)))
	
