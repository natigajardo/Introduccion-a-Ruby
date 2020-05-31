#Crear el programa promedio2.rb con el método compara_arrays que reciba 2 arreglos y calcule el promedio de ambos, devolviendo el mayor de los promedios.

array_1 = [2, 4, 7]
array_2 = [ 1000, 5000, 10000]

def promedio(array)
  array.sum / array.count
end

def compara_array(array_1, array_2)

  #promedio_arreglo_1 = promedio(arreglo_1)
  #promedio_arreglo_2 = promedio(arreglo_2)


  #if promedio_arreglo_1 >= promedio_arreglo_2
  #  return promedio_arreglo_1
  #else
  #  return promedio_arreglo_2
  #end


  # es lo mismo del if poner lo siguiente
  promedio(array_1) >= promedio(array_2) ? promedio(array_1) : promedio(array_2)

end

puts compara_array(array_1, array_2)
