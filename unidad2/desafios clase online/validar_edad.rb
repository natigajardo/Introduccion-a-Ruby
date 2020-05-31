def validar_edad(edad)
  if edad >= 18
    puts "es mayor"
    puts edad
  else
    puts "es menor"
    puts edad
  end
end

3.times do |i|
  edad = rand(1..90)
  validar_edad(edad)
end
