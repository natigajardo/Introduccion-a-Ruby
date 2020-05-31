data = open('data').read.chomp.split(',')
array = []
data.each do |d|
  array.push d.to_i
end
print array
