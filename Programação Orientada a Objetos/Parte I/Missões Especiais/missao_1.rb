=begin
Crie um programa seguindo este paradigma com:
Classes
    Esportista
        Métodos
            competir -> Imprime a mensagem “Participando de uma competição”

    JogadorDeFutebol
        Métodos
            correr -> Imprime a mensagem “Correndo atrás da bola”
        
    Maratonista
        Métodos
            correr-> Imprime a mensagem “Percorrendo o circuito”

As classes JogadorDeFutebol e Maratonista devem herdar os comportamentos da classe Esportista.
No final do programa execute os métodos competir e correr em objetos do tipo JogadorDeFutebol e Maratonista.
=end

class Esportista
    def competir
        puts "Participando de uma competição"
    end
end

class JogadorDeFutebol < Esportista
    def correr
        puts "Correndo atrás da bola"
    end
end

class Maratonista < Esportista
    def correr
        puts "Percorrendo o circuito"
    end
end

atletas = [JogadorDeFutebol.new, Maratonista.new]
atletas.each do |atleta|
    atleta.competir
    atleta.correr
end