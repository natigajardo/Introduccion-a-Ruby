# Se pide un crear un programa que tome los datos de ese archivo y construya un arreglo con los mismos pero transformando todos los valores mayores de 20 a un máximo de 20.

def read_file(data2)
  original_data = open('data2').readlines
  lines = original_data.count
  array = []
    lines.times do |i|
      array << original_data[i].to_i
    end
  return array
end

data = read_file('data2')
n = data.count
  n.times do |i|
    data[i] = 20 if data[i] > 20
  end

print data

#Para guardar un dato se usa file.write('/path/to/file', 'datos')

File.write('output', data.join("\n"))
