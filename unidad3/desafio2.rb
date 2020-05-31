nombres = ['Violeta', 'Andino', 'Clemente', 'Javiera', 'Paula', 'Pía', 'Ray']

#obtener elementos que excedan los 5 caracteres usando .select / Seleccionar los q tengan sobre 5
print nombres.select {|x| x.length > 5}
puts "\n"

#usar .map para crear arreglo con todos los nombres en minúscula
print nombres.map {|x| x.downcase }
puts "\n"

#usar .select para crear un nuevo arreglo con todos los nombres que empiecen con P
print nombres.select {|x| x if x[0] == 'P'}
puts "\n"

#usando .count contar los elementos que empiecen con A, B o C / Andino y Clemente, tiene q ser 2 el resultado
print nombres.count {|x| x[0] == 'A' || x[0] == 'B' || x[0] == 'C'}
puts "\n"

#usando .map, crear un arreglo único con la cantidad de letras que tiene cada nombre
print nombres.map{|x| x.length }
