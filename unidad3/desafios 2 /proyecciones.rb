#importar datos
data = File.open('ventas_base.db').read.chomp.split(',')
data.map! {|x| x.to_f}

def aumento (arr, aumento, desde, hasta)
    rango = arr[desde..hasta]
    result = rango.map {|x| x * aumento}.sum
    "%0.2f" % [result]
end

output = File.open('resultados.data', 'w')
output.write(aumento(data, 1.1, 0, 5)+ "\n")
output.write(aumento(data, 1.2, 6, 11))
output.close
