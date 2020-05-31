n = ARGV[0].to_i

#arriba
n.times do
  print "*"
end
print "\n"

#medio
(n - 2).times do
  print "*"
  (n - 2).times do
    print " "
  end
  print "*"
  print "\n"
end

#abajo
n.times do
  print "*"
end
print "\n"
