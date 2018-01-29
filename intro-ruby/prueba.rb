def read_alum(file_name)  
  file = File.open(file_name, 'r')  
  alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }  
  file.close  
  alum
end

alumnos = read_alum("alumnos.csv")
alu1 = alumnos[0].to_a
alu2 = alumnos[1].to_a
alu3 = alumnos[2].to_a
alu4 = alumnos[3].to_a


alumno1 = Hash.new
alumno1[alu1[0]] = alu1[1..-1].map{|valor| valor.to_i}

alumno2 = Hash.new
alumno2[alu2[0]] = alu2[1..-1].map{|valor| valor.to_i}  #,alu2[2],alu2[3],alu2[4],alu2[5].to_i

alumno3 = Hash.new
alumno3[alu3[0]] = alu3[1..-1].map{|valor| valor.to_i} #,alu3[2].to_i,alu3[3].to_i,alu3[4].to_i,alu3[5].to_i

alumno4 = Hash.new
alumno4[alu4[0]] = alu4[1..-1].map{|valor| valor.to_i}
#---- David

suma = 0
alumno1["David"].each do |v|
	suma = suma + v
end	
promedio1 = suma.to_f / alumno1["David"].size

inasistencia = 0
alumno1["David"].each do |v|
	inasistencia = inasistencia += 1 if v == 0
end	
inasistencia1 = inasistencia

#-------------- Gonzalo

suma = 0
alumno2["Gonzalo"].each do |v|
	suma = suma + v
end	
promedio2 = suma.to_f / alumno2["Gonzalo"].size

inasistencia = 0
alumno2["Gonzalo"].each do |v|
	inasistencia = inasistencia += 1 if v == 0
end	
inasistencia2 = inasistencia


#-------- Mai

suma = 0
alumno3["Mai"].each do |v|
	suma = suma + v
end	
promedio3 = suma.to_f / alumno3["Mai"].size

inasistencia = 0
alumno3["Mai"].each do |v|
	inasistencia = inasistencia += 1 if v == 0
end	
inasistencia3 = inasistencia


#------- JP

suma = 0
alumno4["JP"].each do |v|
	suma = suma + v
end	
promedio4 = suma.to_f / alumno4["JP"].size

inasistencia = 0
alumno4["JP"].each do |v|
	inasistencia = inasistencia += 1 if v == 0
end	
inasistencia4 = inasistencia

ina_total = inasistencia1 + inasistencia2 + inasistencia3 + inasistencia4

#------------------------------------
opcion = 0
while opcion != 4
	puts ''
	puts 'Menu'
	puts '1.- Mostrar alumnos y sus promedios'
	puts '2.- Mostrar alumnos y sus inasistencias'
	puts '3.- Mostrar alumnos aprobados'
	puts '4.- Salir'

opcion = gets.chomp.to_i

	case opcion

		when 1
			puts '----------------------------------'
			puts " Mostrando alumnos y sus promedios: " 
			puts ''
			puts '----------------------------------'			
			print "#{[alu1[0]]} su promedio es #{promedio1} , "
			print "#{[alu2[0]]} su promedio es #{promedio2} , "
			print "#{[alu3[0]]} su promedio es #{promedio3} , "
			print "#{[alu4[0]]} su promedio es #{promedio4} , "

		when 2
			puts '----------------------------------'			
			puts "Mostrando alumnos e inasistencias: "
			puts ''
			puts "----------------------------------"
			print "#{[alu1[0]]} tiene #{inasistencia1} inasistencias , "
			print "#{[alu2[0]]} tiene #{inasistencia2} inasistencias , "
			print "#{[alu3[0]]} tiene #{inasistencia3} inasistencias , "
			print "#{[alu4[0]]} tiene #{inasistencia4} inasistencias , "	
			puts ''
			print "El total de inasistencias es #{ina_total}"					
		when 3
			puts "----------------------------------"
			puts 'Ingrese promedio minimo para aprobar'
					aprueba = gets.chomp.to_f
					aprueba = 5 if aprueba == 0
			puts "----------------------------------"

				puts "#{[alu1[0]]} Ha Aprobado" if promedio1 > aprueba
				puts "#{[alu2[0]]} Ha Aprobado" if promedio2 > aprueba
				puts "#{[alu3[0]]} Ha Aprobado" if promedio3 > aprueba
				puts "#{[alu4[0]]} Ha Aprobado" if promedio4 > aprueba
	end	
end	