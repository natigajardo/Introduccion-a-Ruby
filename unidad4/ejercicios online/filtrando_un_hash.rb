#Dado un hash crear un método que devuelva otro hash pero filtrando todos aquellos que tienen valores inferior a 70000

ventas = {
Octubre: 65000,
Noviembre: 68000,
Diciembre: 72000
}

def filtro(ventas)

  datos_filtrados = {}
  ventas.each do |k,v|
    datos_filtrados[k] = v if v < 70000
  end
  datos_filtrados
end

puts filtro(ventas)
