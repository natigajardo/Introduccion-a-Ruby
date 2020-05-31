def scan_addicts2(array)
  results = []
  n = array.count
    n.times do |i|
      #Lógica de la iteracion
      if array[i] < 90
        results.push 'bien'
      elsif array[i] >= 90 && array[i] < 180
        results.push 'mejorable'
      elsif array[i] >= 180
        results.push 'mal'
      end
    end
  results #Lo que se devuelve
end

print scan_addicts2([120, 50, 600, 30, 90, 10, 200, 0, 500])
# mejorable, bien, mal, bien , mejorable, bien, mal, bien, mal 
