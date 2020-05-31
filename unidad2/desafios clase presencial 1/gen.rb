cantidad_letras = ARGV[0].to_i

=begin
letra = "a"
cantidad.letras.times do
  puts letra
end
=end

def gen(n)
  letras = ""
  letra = "a"
  n.times do
     # puts letra
    letras += letra
    letra = letra.next
  end
 puts letras
end

gen(cantidad_letras)
