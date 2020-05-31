#Un smartwatch muy inteligente cuenta la cantidad de pasos diarios que da una persona, pero en algunos casos genera información erronea, se pide crear un método llamado clear_steps que reciba un arreglo y descarte todos los valores que no sean números o sean menores a 200 o mayor a 100000. Los valores deben quedar como enteros (Integers). El método debe retornar el arreglo filtrado. El programa debe llamarse smartwatch1.rb


pasos = ['100', '21', '231as', '2031', '1052000', '213b', 'b123']


def clear_steps(arr)
  clean_array = []

  arr.each do |a|
    #new_a = a.to_i
    if a.count("a-zA-Z") == 0
      clean_array << a.to_i
    end
  end

  #num = arr.map {|x| x.to_i

  clean_array = clean_array.reject {|x| x < 200 || x > 100000 }

  puts clean_array
  #clean_array

end

puts clear_steps(pasos)
