dictionary = ARGV[0].chomp
pass_test = ARGV[1].chomp

def hack diccionario, password
    dictionary_ = open("diccionario.txt").readlines
    dictionary_.map! {|x| x.chomp}
    intentos = 0
    match = false

    dictionary_.each do |e|
        aux = e
        4.times do |i|
            intentos += 1
            if i == 0
                if aux == password
                    match = true
                    break
                end
            else
                aux += i.to_s
                if aux == password
                    match = true
                    break
                end
            end
        end
        match ? break : nil
    end
    match ? "#{intentos}" : "Palabra no esta en diccionario"
end

print hack(dictionary, pass_test)
