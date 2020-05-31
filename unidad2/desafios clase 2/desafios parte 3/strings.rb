=begin

Menú 0:
Selecciona una opcion:
1 Cuadrado
2 Triangulo
3 Piramide
4 Salir

Menú 1:
Selecciona un número:

Menú 2:
Error opcion ingresada (figura)

Menú 3:
Luego de ser validado en figura y numero, imprimir figura.

=end

n = n.to_i

def cuadrado(n)

  salida = ""

  n.times do |i|
    n.times do |j|
      print '*'
    end
  print "\n"
  end

  salida
end

def triangulo(n)

  salida = ""

  n.times do |i|
    (i+1).times do |j|
      print '*'
    end
    print "\n"
  end

  salida
end


def piramide(n)

  salida = ""

  n.times do |i|
    i.times do |j|
      print '*'
    end
    print "\n"
  end

  n.times do |i|
    (n - i).times do |j|
      print '*'
    end
    print "\n"
  end

  salida
end

def dinamica()

  menu = 0
  n = 0
  opcion = 0

  while opcion.to_i != 4

    if menu == 0
      puts "Bienvenido"
      puts "Selecciona una opción:"

      puts "1 Cuadrado"
      puts "2 Triángulo"
      puts "3 Pirámide"
      puts "4 Salir"
      opcion = gets.to_i

    elsif menu == 1
      puts "Ahora selecciona un número:"
      n = gets.to_i

    elsif menu == 2
      puts "Respuesta incorrecta, vuelva a ingresar su opción:"
      opcion = gets.to_i

    elsif menu == 3
      if opcion == 1
        puts cuadrado(n)
      elsif opcion == 2
        puts triangulo(n)
      else
        puts piramide(n)
      end
      opcion = 4
    end

    if opcion == 4
      puts "Salida"

      elsif opcion != 1 && opcion != 2 && opcion != 3
        menu = 2

      elsif n == 0
        if menu == 0 || menu == 2
          menu = 1
        else
          puts "El número debe ser mayor a cero"
          menu = 1
      end

    elsif n > 0
      menu = 3

    end
  end
end

dinamica()
