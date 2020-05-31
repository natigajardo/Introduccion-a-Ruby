a = [1, 2, 3, 4, 5]
b = ['hola', 1, 2, 5]

total = []
n = a.count

n.times do |i|
  total.push a[i] + b[i]
end

print total
