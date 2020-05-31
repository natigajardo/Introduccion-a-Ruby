n = ARGV[0].to_i

def letra_o(n)
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

end

print "\n\n"

# IDEA: Letra I

def letra_i(n)

  #arriba
  n.times do
    print " *"
  end
  print "\n"

  #medio

  (n - 2).times do |i|
    if n.even?
      (n/2).times do |j|
        print "  "
      end
    else
      print " " * n
    end
    print "*"
    print "\n"
  end

  #abajo
  n.times do
    print " *"
  end
  print "\n"

end

print "\n\n"

# IDEA: Letra Z

def letra_z(n)

  #arriba
  n.times do
    print "*"
  end
  print "\n"

  #medio
  (n - 2).times do |i|
    (n-i -2).times do |j|
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

end

print "\n\n"

# IDEA: Letra X

def letra_x(n)

  y = n-1
    (n).times do |i|
        n.times do |b|
            if  y == b
                print  "*"
            elsif i == b
                print  "*"
            else
                print " "
            end
        end
        y -= 1
        print "\n"
      end

end

print "\n\n"

  # IDEA: Numero cero

def numero_cero(n)
  n.times do |i|
      if i == 0 || i == (n-1)
        n.times do
          print "*"
        end
      else
        print "*"
        (i-1).times do
          print " "
        end
        print "*"
        (n-i-2).times do
          print " "
        end
        print "*"
      end
    print "\n"
  end
end


  # IDEA: NAVIDAD

def navidad(n)
  n.times do |i| #agrega las filas
    (n-i).times do
      print " " #agrega las columnas
    end

    print "* " * i # agrega las columnas
    print "\n"
  end

  (n/2).times do
    print " " * (n-1)
    puts "*"
  end

  (n-1).times do
    print " *"
  end

  print "\n"
end

#letra_o(n) LOGRADO
#letra_i(n) LOGRADO
#letra_z(n) LOGRADO
#letra_x(n) LOGRADO 
#numero_cero(n) LOGRADO
#navidad(n)  LOGRADO
