puts [1, 2, 3, 4, 5, 6, 7, 8] .group_by{ |x| x.even? }

# {false=>[1, 3, 5, 7], true=>[2, 4, 6, 8]}

puts [1, 2, 3, 4, 5, 6, 7, 8] .group_by{ |x| x > 4}

#{false=>[1, 2, 3, 4], true=>[5, 6, 7, 8]}

puts ["hola", "a", "todos"].group_by { |x| x.length }

#{4=>["hola"], 1=>["a"], 5=>["todos"]}

puts [1, 2, 3, 4, 1, 2, 1, 5, 8].group_by { |x| x }

#{1=>[1, 1, 1], 2=>[2, 2], 3=>[3], 4=>[4], 5=>[5], 8=>[8]}

puts ['a', 'ab', 'abc', 'b', 'bc', 'bcd'].group_by { |x| x[0] }

#{"a"=>["a", "ab", "abc"], "b"=>["b", "bc", "bcd"]}

puts ['a', 1, 'b', 2, 'c'].group_by { |x| x.class }

#{String=>["a", "b", "c"], Integer=>[1, 2]}
