from PIL import Image, ImageDraw, ImageFont
x_dim = 640
y_dim = 480
image = Image.new('1', (x_dim, y_dim))
draw = ImageDraw.Draw(image)

#carica il carattere, per settare la dimensione (fc-list per vedere i caratteri installati)
font = ImageFont.truetype("DejaVuSans.ttf", 150)

draw.text((10,10), 'Ineccepibile!', fill = 1, font=font)
#diventa lista
image = list(image.getdata())

#if(image[i] == 2):
#		image[i] = 0
# stampo rimuovendo il pistolotto della lista
print(''.join(map(str, image)))


#per stampare a schermo formattato
#matrix = [ image[i:i+x_dim] for i in range(0,len(image),x_dim) ]
#for l in matrix:
#	print(''.join(map(str, l)))

