notas = [5, 7, 1, 3, 5, 8, 9, 'N.A', 'N.A', 3]

notas_nuevas = []
notas.each do |nota|
  if nota == 'N.A'
    notas_nuevas.push 2
  else
  notas_nuevas.push nota
  end
end

puts (notas_nuevas.sum / notas_nuevas.count.to_f)
