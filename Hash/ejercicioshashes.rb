# Ejercicio 1

# h = {
# 	claveuno: 10,
# 	clavedos: 20,
# 	clavetres: 30
# }

# puts h

# EJercicio 2

# 2.1

# productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' =>
# 750}

# productos.each { |producto, valor| puts producto }

# 2.2

# productos['cereal'] = 2200

#2.3

# productos['bebida'] = 2000

#2.4Convertir el hash en un array y guardarlo en una nueva variable.

 	# productos_nuevos =  productos.to_a
 	# print productos_nuevos

 #2.5	

 # #Eliminar galletas
 # productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' =>
 # 750}

 # productos.delete('galletas')	

 # print productos

 #Ejercicio 3

#3.1
# h = {"x": 1, "y":2}

# h['z'] = 3

#3.2

# h[:x] = 3

#3.3

# h.delete(:y)

#3.4

#  h = {"x": 1, "y":2}

#  h['z'] = 3

#  h.each do |key,valor|
#  	puts 'yeeah' if key == 'z'
# end

#3.5

#   x = {"a": "hola" } 

# array_nuevo = x.invert

# print array_nuevo

# Ejercicio 4
# 4.1
# personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
# edades = [32, 28, 41, 19]

# personas_nuevo = personas.map { |i| i.to_sym}

# personas_hash = personas_nuevo.zip(edades).to_h

# puts personas_hash

# 4.2

# 	def promedio (promehash)
# 			suma = 0
# 			promehash.each do |key,value|
# 				suma = suma + value
# 			end
# 		promedio = suma / promehash.size
# 	end		


# puts promedio(ph)

# 5.-
# meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
# ventas = [2000, 3000, 1000, 5000, 4000]

# inve = meses.map { |i| i.to_sym}

# inventario = inve.zip(ventas).to_h

# puts inventario

# 5.1

# puts inventario.invert

# 5.2
# inventario_reves = inventario.invert

# 	mayor = []
# 	mayor_a = 0
# 	inventario_reves.each do |valor, mes|
# 			mayor = mes if valor > mayor_a
# 			mayor_a = valor if valor > mayor_a
# end

# 6.1

# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }


# 	plato = []
#  	costo = 0

#  	restaurant_menu.each do |a, b|
#  			plato = a if b > costo
#  			costo = b if b > costo
#  end

#  6.2

# 	plato = []
#  	costo = 100

#  	restaurant_menu.each do |a, b|
#  			plato = a if b > 0 and b < costo
#  			costo = b if b > 0 and b < costo	
#  end

# 6.3
# #  			suma = 0
# #  			restaurant_menu.each do |key,value|
# #  				suma = suma + value
# #  			end	
# #  			suma.to_f

# # promedio = suma / restaurant_menu.size
# # puts promedio

# 6.4

# nuevo_menu = restaurant_menu.map do |a, b|
# 			a
# end

# puts nuevo_menu

# 6.5

# nuevo_menu = restaurant_menu.map do |a, b|
# 			b
# end

# puts nuevo_menu

# 6.6

# menu_con_iva = restaurant_menu.transform_values { |x| x *1.19}

# puts menu_con_iva

# 6.7
# menu_descuento = restaurant_menu.map do |a, b|
# 		"El nuevo precio de #{a} es igual a #{b*0.8}" if a.size > 1
# end

# puts menu_descuento

#7
# inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
# opcion = 0

# while opcion != 7 
# 	puts 'Menú'
#  puts '1.- Agregar un item y valor'
#  puts '2.- Eliminar un item '
#  puts '3.- Actualizar un item'
#  puts '4.- Ver todo el stock'
#  puts '5.- Ver item con mayor stock'
#  puts '6.- Preguntar si existe un item'
#  puts '7.- Salir'

# opcion = gets.chomp.to_i

# case opcion

#  	when 1
#  		puts 'Ingrese un elemento (ejemplo: celular,10)'
#  			r = gets.chomp # Obtiene string por teclado y guarda en r
#  			array = r.split(',') #Esto quedaria ["palabra","valor"]
# 			inventario[array[0].to_sym] = array[1].to_i 
# 			#Se agrega la posicion 0 del array al inventario
# 			# y se agrega la posicion 1 del array al inventario.
# 			puts inventario
# 			#Se imprime para ver como queda.
			
# 	when 2
# 		puts inventario
# 		puts 'Ingrese producto a eliminar'
# 		eliminar = gets.chomp.to_sym #Se convierte para
# 		# que al eliminar busque un simbolo.

# 		inventario.delete(eliminar)

# 		puts"Se ha eliminado #{eliminar} "
# 			inventario.each do |key, value|
# 		puts "#{key} : #{value}"
#  		end

#  	when 3
#  		puts inventario
#  		puts 'Ingrese producto a Actualizar'
#  		item = gets.chomp.to_sym #Pasando ejemplo "coco" a :coco

#  		puts 'Ingrese nuevo valor'
#  		nuevo_valor = gets.chomp.to_i
#  		inventario[item] = nuevo_valor

#  		puts inventario

#  	when 4
#  		puts 'Visualizar Stock Total'
#  			acumulador = 0
#  			inventario.each do |key, value| #Recibe claves y valores
#  				acumulador = acumulador + value
# 		end
# 		puts "El stock total es de #{acumulador}"

#  	when 5
#  		puts 'Mostrando el item con el mayor stock :'
#  			mayor = 0
#  			inventario.each do |llave, valor|
#  					mayor = valor if valor > mayor
# end
#  		puts mayor			

#  	when 6
#  		'Ingrese producto a buscar: '
#  		clave_buscada = gets.chomp.to_sym
#  		encontrada = false
#  		inventario.each do |key, valor|
#  				encontrada = true if key == clave_buscada
# 		end			
# 		puts encontrada

#  	when 7
#  		puts 'Ha elegido salir'

#  	else
#  		puts 'valor no valido'
# 	end
# end 	


