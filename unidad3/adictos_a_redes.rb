
def scan_addicts(array)
  results = []
  n = array.count
    n.times do |i|
      #Aqui va la logica de la iteracion
      if array[i] > 90
        results.push 'mal'
      else
        results.push 'bien'
      end
    end
  results #Lo que se devuelve * Cuidado con el retorno, times retorna la cuenta
end

print scan_addicts([120, 50, 600, 30, 90, 10, 200, 0, 500])
