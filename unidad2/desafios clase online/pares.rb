numero = ARGV[0].to_i
i = 0
suma = 0

while  i < numero
    i += 1
  if i % 2 == 0
    suma += i
  end
end

puts suma #Suma total entre el 0 y todos los numeros entre él y el numero elegido
