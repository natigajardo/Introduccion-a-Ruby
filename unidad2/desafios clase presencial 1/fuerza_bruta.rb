password = ARGV[0].to_s

i = 0
nuevo_password = "a"
while password != nuevo_password
  puts "intento #{i} " + " => " + nuevo_password
  nuevo_password = nuevo_password.next
  i += 1
end

puts "total de intentos: #{i}"

#en i guardamos la cantidad de iteraciones que vamos haciendo, la cantidad de vueltas al ciclo o intentos.
