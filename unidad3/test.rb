a = [1, 2, 3]
puts a.inject(0) { |suma, x| suma += x; 1}
