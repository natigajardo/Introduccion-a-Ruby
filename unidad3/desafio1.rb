a = [1, 9 ,2, 10, 3, 7, 4, 6]

#Sumar 1 a cada uno de los valores del array
print a.map { |x| x + 1}
puts "\n"

#Con map convertir valores a float
print a.map { |x| x.to_f}
puts "\n"

#Con select descartar los elementos menores a 5
print a.select { |x| x > 5}
puts "\n"

#con inject sumar todos los valores del array
print a.inject { |sum, x| sum + x }
puts "\n"

#con .count contar todos los elementos menores a 5
print a.count {|x| x < 5}
