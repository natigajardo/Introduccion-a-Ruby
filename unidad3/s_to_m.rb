def to_minutes(array)
  results = []
  n = array.count
  n.times do |i|
    results.push(array[i].to_i / 60)
  end
  results
end


#seconds = [100, 50, 1000, 5000, 1000, 500]
#estan en segundos
puts to_minutes([100, 50, 1000, 5000, 1000, 500])
