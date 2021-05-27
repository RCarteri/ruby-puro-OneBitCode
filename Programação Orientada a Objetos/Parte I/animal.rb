class Animal 
    def pular
        puts 'Toing! tóim! bóim! póim!'
    end

    def dormir
        puts 'ZzZzzz!'
    end
end

class Cachorro < Animal
    def som
        puts 'Au Au'
    end
end

class Gato < Animal
    def som
        puts 'Meow'
    end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.som

gato = Gato.new
gato.pular
gato.dormir
gato.som
