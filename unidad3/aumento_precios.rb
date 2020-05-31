def argument(array,factor)
  array_nuevo = []
  array.each do |precio|
    array_nuevo.push(precio * factor)
  end
  array_nuevo
end

print argument([120,210,309,104,192],1.2)
