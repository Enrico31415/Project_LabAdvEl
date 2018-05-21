from PIL import Image, ImageDraw, ImageFont
x_dim = int(640/8)
y_dim = int(480/8)
image = Image.new('1', (x_dim, y_dim))
draw = ImageDraw.Draw(image)

#carica il carattere, per settare la dimensione (fc-list per vedere i caratteri installati)
font = ImageFont.truetype("DejaVuSans.ttf", 75)

draw.text((13,-13), 'S', fill = 1, font=font)
#diventa lista
image = list(image.getdata())

print("")
print("`define d_ship \t "+str(x_dim*y_dim)+"'b", end ='')
#if(image[i] == 2):
#		image[i] = 0
# stampo rimuovendo il pistolotto della lista
print(''.join(map(str, image)))


#per stampare a schermo formattato
#matrix = [ image[i:i+x_dim] for i in range(0,len(image),x_dim) ]
#for l in matrix:
#	print(''.join(map(str, l)))

