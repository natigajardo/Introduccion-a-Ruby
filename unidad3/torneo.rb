=begin
e1 V.S e2
e1 V.S e3
e2 V.S e1
e2 V.S e3
e3 V.S e1
e3 V.S e2
=end

#Solucion 1 - Genera resultados repetidos

  a = ['Equipo 1','Equipo 2','Equipo 3']
  b = ['Equipo 1','Equipo 2','Equipo 3']
  t = []

  a.each do |e1|
    b.each do |e2|
      t.push "#{e1} V.S #{e2}"
    end
  end

  #puts t.join("\n")


#Solucion 2: Para quitar los repetidos :
  a = ['Equipo 1','Equipo 2','Equipo 3']
  b = ['Equipo 1','Equipo 2','Equipo 3']
  t = []

  a.each do |e1|
    b.each do |e2|
      if e1 != e2
        t.push "#{e1} V.S #{e2}"
      end
    end
  end

  #puts t.join("\n")


#Solución 3: Si siempre son los mismos equipos se puede trabajar con 1 solo arreglo (ya que ambos dicen lo mismo)

  a = ['Equipo 1','Equipo 2','Equipo 3']
  t = []

  a.each do |e1|
    a.each do |e2|
      if e1 != e2
        t.push "#{e1} V.S #{e2}"
      end
    end
  end

  puts t.join("\n")
