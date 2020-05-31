ingrediente = ARGV[0]
ingredientes_pizza = ['piña', 'jamón', 'salsa', 'queso']

if ingredientes_pizza.include?(ingrediente)
  puts 'existe'
else
  ingredientes_pizza.push(ingrediente)
end

puts ingredientes_pizza

=begin
El push sirve para agregar elementos, ya que en este caso lo que se realizó fue que si el ingrediente no existía en el listado, el que ingresara el usuario fuera añadido.
=end
