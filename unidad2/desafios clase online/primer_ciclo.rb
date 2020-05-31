puts "ingrese un numero entre 1 y 10"
valor = gets.to_i

while valor < 1 || valor > 10
  puts "el valor no esta entre 1 y 10"
  puts "ingrese un numero entre 1 y 10"
  valor = gets.to_i
end
