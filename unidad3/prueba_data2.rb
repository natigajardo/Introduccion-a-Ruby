#puts data = open('data2').readlines

#Para quitar el salto de línea se usa chomp, pero si lo transformamos a numero entero automaticamente se quitará el \n

=begin
original_data = open('data2').readlines
lines = original_data.count
array = []
  lines.times do |i|
    array << original_data[i].to_i
  end
=end

def read_file(data2)
  original_data = open('data2').readlines
  lines = original_data.count
  array = []
    lines.times do |i|
      array << original_data[i].to_i
    end
  return array
end

print read_file('data2')
