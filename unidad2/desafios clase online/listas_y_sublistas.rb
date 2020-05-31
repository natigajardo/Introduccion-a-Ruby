n_externo = ARGV[0].to_i
n_interno = ARGV[1].to_i

puts "<ul>"

(n_externo).times do |j|
  puts "\t<li>\n"
  puts "\t\t<ul>"

  (n_interno).times do |i|
    puts "\t\t\t<li> #{j + 1}.#{i + 1} </li>"
  end

  puts "\t\t</ul>"
  puts "\t</li>"
end

puts "</ul>"
