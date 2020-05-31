#Se necesita un programa que pueda leer un archivo de las mismas características y generar un archivo llamado procesos_filtrados.data donde todos los valores sean mayor a un número utilizar al cargar el programa.

#n = ARGV[0].to_i
data = open('procesos.data').readlines

#clear_array = []

#data.each do |d|
#  if d.to_i > n
#    clear_array << d.to_i
#  end
#end

result = data.select{|x| x.to_i > ARGV[0].to_i}

File.write("procesos_filtrados.data", result.join("\n"), mode: "w")
