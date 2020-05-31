ingrediente = ARGV[0]
ingredientes_pizza = ['piña', 'jamón', 'salsa', 'queso']

if ingredientes_pizza.include?(ingrediente)
  puts 'existe'
else
  puts 'no existe'
end

=begin
El .include? sirve para comprobar si un elemento existe dentro de un arreglo o no, para eso se realizó el if, si existe el ingrediente dentro del listado ingredientes_pizza, aparecería que existe, mientras que si no se encuentra en el listado diría no existe. 

=end
