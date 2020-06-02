#ELIMINAR UNA LLAVE usando .delete

 a = {k1: 5, k2: 7}
 a.delete(:k1) #devuelve el valor 5 que fue borrado
 #print a / se pone esto para que de el nuevo resultado

#UNIR DOS HASHES, se usa .merge

  a = {k1: 5, k2: 10}
  b = {k3: 15, k4: 20}
  #puts a.merge(b)

#COLISIONES: cuando dos hashes tienen una misma llave el segundo sobreescribe el primero

  a = {k1: 5, k2: 10}
  b = {k2: 15, k3: 20}
  #puts a.merge(b)
  #puts b.merge(a)

  #cuando a.merge(b) => {:k1=>5, :k2=>15, :k3=>20}

  #cuando b.merge(a) => {:k2=>10, :k3=>20, :k1=>5}

#INVIERTIENDO UN HASH : obtener una llave desde un valor :

  colors = {'red' => '#cc0000', 'green' => '#00cc000', 'blue' => '#0000cc' }

  #puts colors.invert['#cc0000']

#OBTENER TODAS LAS CLAVES DE UN HASH

  colors = {'red' => '#cc0000', 'green' => '#00cc000', 'blue' => '#0000cc' }

  #puts colors.keys

#OBTENER TODOS LOS VALORES DE UN HASH

  colors = {'red' => '#cc0000', 'green' => '#00cc000', 'blue' => '#0000cc' }

  #puts colors.values


  ventas = {
    zona_norte: [1000,500,300],
    zona_centro: [500, 500, 400]
  }

  #puts ventas.values

  
