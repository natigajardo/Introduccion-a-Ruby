
ventas = {
  Octubre: 65000,
  Noviembre: 68000,
  Diciembre: 72000
}

#Modificar el hash para incrementar las ventas un 10%
#Generar un nuevo hash pero con las ventas disminuidas un 20%

ventas.each do |k,v|
  ventas[k] += 0.1 * ventas[k]
  #o tambien sirve ventas[k] *= 1.1 multiplicando!
end

#puts ventas 

ventas = {
  Octubre: 65000,
  Noviembre: 68000,
  Diciembre: 72000
}

nuevo_ventas = {}

ventas.each do |k,v|
  nuevo_ventas[k] = v * 0.8
end

puts nuevo_ventas
