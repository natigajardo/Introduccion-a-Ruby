ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
}

#Crear el programa trimestres.rb donde se pide generar un hash llamado quarters con las ventas de cada trimestre a partir del hash de ventas de los enunciados anteriores. Las claves del hash tienen que ser 'Q1', 'Q2', 'Q3', 'Q4'


valores = ventas.values
#[15000, 22000, 12000, 17000, 81000, 13000, 21000, 41200, 25000, 21500, 91000, 21000]

quarters = {}
i = 0

  (valores).each_slice(3) do |v|
    i += 1
    if valores
      quarters["Q#{i}"] = v.sum
    end
  end

puts quarters
