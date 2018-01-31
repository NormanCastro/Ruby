# Ejercicio 1

# def par(x)
#  x % 2 == 0
# end

# puts par(2)
# puts par(3)
# puts par(4)
# puts par(5)

# Ejercicio 2

#---------------------------------

# El siguiente algoritmo debería mostrar 'sí' o 'no', sin embargo muestrar error. Se pide identificar el error y corregirlo:

 	# def random
 	# 	result = [true, false].sample
 	# end

 	# if random == true
  #  	puts 'sí'
 	# else
  #  	puts 'no'
 	# end

# --------------------------------------
# Ejercicio 3
# Escriba un método llamado check5 que devuelva true
# cuando se le pase un número mayor a 5 y false en caso
# contrario.
	
# 	def check5(numero)
# 		numero > 5
# end

# puts check5(5) # Debería ser false
# puts check5(6) # Debería ser true

#-------------------------------
# Ejercicio 4
# Crear un método que imprima un saludo. El método
# debe recibir un parámetro, si ese parámetro es el string
# "Hola" el método debe imprimir "Hola Mundo".

# def saludo(palabra)
# 	puts "Hola Mundo" if palabra == "Hola"
# end

# saludo("Hola")

#------------------------------
# Ejercicio 5
# Crear un método que reciba como parámetro
# dos números enteros positivos e imprima
# los números pares que existen entre esos
# dos números.

 # def imprima_pares(numero1, numero2)
 # 	 	for i in numero1..numero2
 #  		puts i if i.even?
 #  	end
 #  end

 # imprima_pares(5,10)

#----------------------------

# Ejercicio 6

 # def draw_line(size)
 #   '*' * size
 # end

 # def draw_lines(size)
 #   size.times do |i|
 #  	puts	draw_line(5) 
 #    end	 
 # end

 # draw_lines(5)

# ----------------
# Ejercicio 7

# def str_car(str,car)
# 	str.include?(car)
# end

# puts str_car('Hela Munde','o')

#-------------------
# Ejercicio 8

# alu = ['Hugo','Felipe','Luis','Claudio','Adrian','Patricia','Yannick','Fernanda','Franco','Felipe','Heraldo','Arturo','Milenko','Daniel','Daniel','Ignacio','Kevin','Norman','Roberto','Patricio','Matias']

# 8.1
# alu.each do |i|
# 	puts i if i.size > 5
# end	

# 8.2
# alu2 = alu.map do |i|
# 	 i.downcase
# end

# puts alu2

# 8.3
# alu2 = alu.map do |i|
# 	(i.size).to_s + i
# end

# puts alu2



