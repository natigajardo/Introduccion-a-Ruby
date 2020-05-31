n = ARGV[0].to_i
puts " numero ingresado #{n}"

 i = 0
 numero_par = 0

 while numero_par < n
   if (i % 2 == 0)
     puts i
     numero_par += 1
   end
    i += 1
 end
