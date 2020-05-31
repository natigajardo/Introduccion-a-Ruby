#Reemplazar until por while

#puts 'Ingrese un número para comenzar la cuenta: '
#cuenta_regresiva = ARGV[0].to_i
#puts "Contando desde #{cuenta_regresiva}..."
#until cuenta_regresiva < 0
#puts cuenta_regresiva
#cuenta_regresiva -= 1
#end

cuenta_regresiva = 10
puts "contando desde #{cuenta_regresiva}..."
puts "contando desde "+cuenta_regresiva.to_s+"..."

#until cuenta_regresiva < 0
while cuenta_regresiva >= 0
  puts cuenta_regresiva
  cuenta_regresiva -= 1
end
