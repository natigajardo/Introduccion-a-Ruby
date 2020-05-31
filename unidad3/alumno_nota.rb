notas = [5, 9, 6, 8, 9]
alumnos = ['Juliana', 'Francisca', 'Pedro', 'Diego', 'Macarena']

nombre_a_buscar = gets.chomp
indice = alumnos.index(nombre_a_buscar)
  if indice
    puts "la nota es: #{notas[indice]}"
  else
    puts "No se encontró a #{nombre_a_buscar}"
  end
