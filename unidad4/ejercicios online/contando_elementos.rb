#iterar y contar

array = [1, 2, 6, 7, 2, 5, 8, 9, 1, 3, 6, 7]
hash = {}
array.each do |i|
  if hash[i]
    hash[i] += 1
  else
    hash[i] = 1
  end
end
puts hash

#con .group_by

# Los agrupamos
grouped = [1, 2, 6, 7, 2, 5, 8, 9, 1, 3, 6, 7] .group_by {|x| x}
# => {1=>[1, 1], 2=>[2, 2], 6=>[6, 6], 7=>[7, 7], 5=>[5], 8=>[8], 9=>[9], 3=>[3]}

#Luego remplazamos el valor por la cuenta
grouped.each do |k,v|
grouped[k] = v.count
end

puts grouped
