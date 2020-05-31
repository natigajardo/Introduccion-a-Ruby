puts "Ingrese su contraseña"
password = gets.chomp

while password != "password"
  puts "La contraseña es incorrecta"
  puts "Ingrese la contraseña nuevamente"
  password = gets.chomp
end

puts "Su contraseña es correcta"
