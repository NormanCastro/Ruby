#Condicional : If and else

# Ejercicio 1
# Modifica la condición para que se cumpla.

# a = 2
# if a == 2
#   puts 'La condición es verdadera.'
# end



# Ejercicio 2
# Modifica el valor asignado a la variable 'a' para que se cumpla la condición.

# a = 5
# if a == 5
#   puts 'La condición es verdadera.'
# end


# Ejercicio 3
# Hacer un refactoring, transformando las últimas 3 líneas en una sola línea.

# a = 'X9-by'

# if a == 'X9-by'
#   puts 'HOLA!'
# end

# puts 'HOLA' if a == 'X9-by' (Respuesta)

# --------------------------------

# Ejercicio 4
# La variable 'password' no se encuentra definida.

# Permitir que el usuario pueda ingresar la contraseña por teclado, almacenar esta contraseña en la variable 'password' y luego evaluar la condición.

# puts 'Ingrese password'
# password = gets.chomp

# if password == 'secreto'
#   puts 'Acceso PERMITIDO! :)'
# else
#   puts 'Acceso DENEGADO! :('
# end

# Ejercicio 5
# Utiliza lógica booleana para hacer un refactoring de este código. Para verificar la evaluación de condiciones puedes modificar los valores de a y b.

# a = true
# b = true

# if a == true
#   if b == true
#     puts 'Lograste A y B!'
#   else
#     puts 'Lograste A! Pero no B!'
#   end
# else
#   puts 'No lograste A ni B!'
# end


# if a == true
#  	puts b.true? ? 'Lograste A y B' : 'Lograste A pero B no'
#  else
#  	puts b.true? ? 'Lograste B pero A no' : 'No lograste ni A ni B'
# end	


# Ejercicio 6
# Utiliza álgebra booleana para hacer un refactoring de este código. Para verificar la evaluación de condiciones puedes modificar los valores de a y b.

# a = 'verdadero'
# b = 'falso'

# if a == 'verdadero'
#     puts ':)'
# else
#   if b == 'verdadero'
#     puts ':|'
#   else
#     puts ':('
#   end
# end

# if a == 'verdadero'
#     puts ':)' 
# else
#     puts b.true? ? ':|' : ':('
# end

# Ciclos Iterativos
# Ejercicio 1
# En el siguiente código reemplaza la instrucción 'for' por 'times'.

# for i in 1..10 do
#   puts i
# end

# 10.times do |i|
#   puts i+1
# end

# Ejercicio 2
# En el siguiente código reemplaza la instrucción 'while' por 'times'.

# i = 0
# while i < 10
#   puts "Iteración #{i}"
#   i = i + 1
# end

# 10.times do |i|
# 	puts "ITeración #{i}"
# end	

# Ejercicio 3
# Mostrar todos los divisores del número 990 con 'while', 'for' y 'times'.

#  i = 1
#  while i < 991
#  		numero = 990/i
#    puts "Numero Divisor #{i} y su resultado es #{numero}"
#    i = i + 1
#  end

#  for i in 1..990
#  	numero = 990/i
#    puts "Numero Divisor #{i} y su resultado es #{numero}"
#  end

#  990.times do |i|
#  		i = i+1
#  		numero = 990/ i
#    puts "Numero Divisor #{i} y su resultado es #{numero}"
#  end

# Ejercicio 4
# En el siguiente código:

# Realizado

 # a = 5
 # b = ''
 # b = "<ul>\n"
 # a.times do
 #   b = b +"<li> hola </li>\n"
 # end
 # b = b + '</ul>'

 # puts b


# Modifica el código para que el contenido de b sea un string que contenga:

# <ul>
# 	<li> hola </li>
# 	<li> hola </li>
# 	<li> hola </li>
# 	<li> hola </li>
# 	<li> hola </li>
# </ul>


# ---------------------

# Ejercicio 5
# El siguiente código busca sumar todos los números del 1 al 10, pero no funciona porque algo falta, ¿puedes arreglarlo?

# Hint: El total debería sumar 55.

# suma = 0
# 10.times do |i|
# 	suma += (i+1)
# end

# puts suma

# Ejercicio 6
# El siguiente algoritmo pretende calcular la multiplicación de los números de 1 a 10. (Factorial de 10)

# Hint: El resultado es 3628800.

# multiplicacion = 1

# 10.times do |i|
#   multiplicacion *= (i+1)
# end

# puts multiplicacion

# Ejercicio 7
# El siguiente código:

# a = 10
# a.times do |i|
# 	b = i+1
#   if b.even? 
#     puts 'par'
#    else
#    	puts b 
#   end
# end
# Debería imprimir la siguiente secuencia, pero no está completo:

# 1
# par
# 3
# par
# 5
# par
# 7
# par
# 9
# par

# Ejercicio 8
# Generar -utilizando un ciclo iterativo- un string con la siguiente estructura:

# a = '1impar 2par 3impar 4par 5impar 6par 7impar 8par 9impar 10par'

# a = ''
# 10.times do |i|
# 	b = i+1
#    if b.even? 
#     a = a + b.to_s + 'par '
#    else
#     a = a + b.to_s + 'impar ' 
#    end 
# end

# puts a


# Ejercicio 9
# Crear un algoritmo que permita generar un string con el siguiente contenido:

# <table>
#  <tbody>
#   <tr>
#     <td> 1 </td>
# 	<td> 2 </td>
# 	<td> 3 </td>
#   </tr>
#  </tbody>
# </table>

#  a = 3
#  b = ''
#  b = '<table>' + '<tbody>' + '<tr>'
#  a.times do
#    b = b + ' <td>' + a.to_s + '</td>' 
#  end
#  b = b + '</tr>' + '</tbody>' +  '</table>'
# puts b



# Ejercicio 10
# El siguiente bloque de código debería mostrar un menú e imprimirlo reiteradamente hasta que el usuario ingrese la opción número 4.

# puts 'Escoger una opcion'
# puts 'Opcion a'
# puts 'Opcion b'
# puts 'Opcion c'
# puts 'Opcion d'
# opcion = gets.chomp
# while opcion != 'd'


# 	case opcion
# 		when 'a'
# 			puts 'Ha escogido la opcion a'

# 		when 'b'
# 			puts 'Ha escogido la opcion b'

# 		when 'c'
# 			puts 'Ha escogido la opcion c'
# 	else
# 		puts "opcion invalida"

# 	end
	
# 	puts 'Escoger una opcion'
# 	puts 'Opcion a'
# 	puts 'Opcion b'
# 	puts 'Opcion c'
# 	puts 'Opcion d'
# 	opcion = gets.chomp

# end

# Ciclos Iterativos Anidados
# Ejercicio 1
# Se pide imprimir la secuencia numérica, de la siguiente forma:

# 1   2   3   4
# 2   4   6   8
# 3   6   9   12
# 4   8   12   16

# a = 1 
# b = 2
# c = 3
# d = 4

#   for i in 1..4
#   	puts " " + a.to_s + " " + b.to_s + " " + c.to_s + " " + d.to_s	

#   	a += 1
#   	b += 2
#   	c += 3
#   	d += 4
#   end

# Ejercicio 2
# Generar el código para imprimir un string con el siguiente contenido:

# <table>
#  <tbody>
#   <tr>
#     <td> 1 </td>
#     <td> 2 </td>
#     <td> 3 </td>
#     <td> 4 </td>
#   </tr>
#   <tr>
#     <td> 5 </td>
#     <td> 6 </td>
#     <td> 7 </td>
#     <td> 8 </td>
#   </tr>
#   <tr>
#     <td> 9 </td>
#     <td> 10 </td>
#     <td> 11 </td>
#     <td> 12 </td>
#   </tr>
#   <tbody>
#  </table>

  #  a = 4
  #  b = ''

  #  b = '<table>' + '<tbody>' + '<tr>'
  #  a.times do
  #    b = b + ' <td>' + a.to_s + '</td>' 
  #  end

  #  b = b + '</tr>' + '<tr>'
  #  c = 5
  #  a.times do
  #  b = b + ' <td>' + c.to_s + '</td>'
  #  c += 1
  #  end

 	# b = b + '</tr>' + '<tr>'
 	# c = 9
  #  a.times do
  #  b = b + ' <td>' + c.to_s + '</td>' 
  #  c += 1
  #  end
   
  #  b = b + '</tr>' +  '</tbody>' + '</table>'

  #  puts b

# Ejercicio 3
# Construir un programa que permita ingresar un número por teclado e imprimir la tabla de multiplicar del número ingresado.

# Debe repetir la operación (volver a preguntar por un número) hasta que se ingrese un 0 (cero).

# Ingrese un número (0 para salir): _

# puts 'Ingrese numero , 0 para salir'
# numero = gets.chomp.to_i
#  while numero != 0


#    for i in 1..12
#    	resultado = numero * i
#    	puts i.to_s + ' * ' + numero.to_s + ' = ' + resultado.to_s
#    	resultado = 0
#    end
#    numero = gets.chomp.to_i
#   end  	
