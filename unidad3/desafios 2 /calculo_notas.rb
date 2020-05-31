
def nota_mas_alta (arr)
  nombre = arr[0]
  notas = arr[1..arr.count]

  nota_mas_alta = notas.map{|nota| nota.to_f}.max

  "#{nombre} => #{nota_mas_alta}"
end

data = open('notas.data').readlines

data.each do |alumno|
 puts nota_mas_alta(alumno.split(','))
end
