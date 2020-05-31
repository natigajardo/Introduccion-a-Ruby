 visitas = [1000, 800, 250, 300, 500, 2500]

 #Crear un método llamado promedio que devuelva la cantidad promedio de visitas en el arreglo.

  #La Corrección del ejercicio funciona llamando al método promedio , por lo que el método tiene que existir y el valor ser el promedio de cualquier arreglo entregado.

  #Puedes probar el programa llamando al método y mostrando el resultado pero no es necesario que el programa entregue resultado alguno, la revisión se hace llamando al método.

  def promedio(array)
    #sumar los valores y dividir por los dias
    total_visitas = array.sum
    cantidad_dias = array.count

    puts resultado = (total_visitas.to_f / cantidad_dias).truncate(2)

  end

  promedio(visitas)
