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


def filter(ventas)
  dato_ingresado = ARGV[0].to_i

  datos_filtrados= {}

   ventas.each do |k,v|
     datos_filtrados[k] = v if v > dato_ingresado
   end

  puts datos_filtrados
end

filter(ventas)
