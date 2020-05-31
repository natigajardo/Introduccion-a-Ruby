n = ARGV[0].to_i
puts " numero ingresado #{n}"

 i = 0
 total = 0
n.times do |f|
  par = i+2
  puts par

  total += par
  i += 2
end

puts "total: #{total}"
