=begin
array = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]

n = array.count
n.times do |i|
  n.times do |i|
    print "\t#{array[i][i]}"
  end
  puts
end
=end

array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

n = array.count
n.times do |i|
  n.times do |j|
    print "\t#{array[j][i]}"
  end
  puts
end
