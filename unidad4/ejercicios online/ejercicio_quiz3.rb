puts [[1, [2, 3]], [2, [3, 4]]].to_h

array = [1, 2, 6, 7, 2, 5, 8, 9, 1, 3, 6, 7]
hash = {}
array.each do |i|
  if hash[i]
    hash[i] += 1
  end
end
puts hash

#el ejercicio tiene un problema, y es que el hash no tiene valor. El +=1 sirve para sumar elementos a claves ya existentes, al momento que entra el valor 1, no existe ninguna clave previamente por lo que no se puede sumar a nada, y el resultado son unas llaves vacías.
