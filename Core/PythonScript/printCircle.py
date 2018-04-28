#scipt che parametrizza una croce di dimensione cube_dimension su una matrice di dimensione impostata. Utile per implementarlo poi in vlog
import math
# unico parametro modificabile senza grossi problemi: distanza tra i due cerchi
delta_r = 8
max_x = 64
max_y = 48
radius_ext  = 96
x= 0
y=0
radius_int = radius_ext -delta_r
a_ext=2*max_y/24
b_ext=2*max_y/32
a_int=2*(max_y)/24
b_int=2*(max_y)/32
x_0 = 32
y_0 = -24



print (""+str(64*48)+"'b", end='')
for i in range(0,max_y):
		for j in range(0,max_x):
			y_external = math.sqrt(radius_ext**2 - (b_ext*(j-x_0+1))**2)/a_ext - y_0
			#se la radice del secondo cerchio è negativa (e lo sarà, perché esco dal dominio nelle j) allora trik infame
			if (((radius_int)**2 - (b_int*(j-x_0))**2) >= 0):
				y_internal = math.sqrt(abs((radius_int)**2 - (b_int*(j-x_0))**2))/a_int - y_0
			else:
				y_internal = y_external-8	
			# arrotondo
			y_internal = int(y_internal)
			y_external = int(y_external)
		#	print (str(x)+"\t"+str(y_external))
			x += 1 
			if ((i <= y_external and i >= y_internal) or (max_y-i<= y_external and max_y-i>= y_internal)):
				print("1", end='')
			else:
				print("0", end = '')





			# stampo per testing
		#	print(str(j)+ "\t" +str(y_external))
		#	print(str(max_x-j)+ "\t" +str(-y_external+48))
		#	print(str(j)+ "\t" +str(y_internal))
		#	print(str(max_x-j)+ "\t" +str(-y_internal+48))
				#print(str(x) + "\t"+ str(y))
			#	if (i == y):
			#		print("1", end='')
			#	else:
			#		print("0", end='')


