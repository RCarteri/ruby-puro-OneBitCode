class Escolher
    def initialize opcao
        @opcao = opcao
    end

    def lista_idiomas
        [{"pt" => "Português"}, {"en" => "Inglês"}, {"es" => "Espanhol"}, {0 => "Sair"}]
    end

    def escolher_idioma
        loop do
            puts "Digite o idioma de #{@opcao}:"
            lista_idiomas.each_with_index do |idioma, index|
                puts "#{index + 1} - #{idioma.values.first}"
            end
            escolha = gets.chomp.to_i
            case escolha
            when 1..3
                @key = lista_idiomas[escolha - 1].keys.first
                @value = lista_idiomas[escolha - 1].values.first
            when 4
                @key = 0
                @value = 0
            else
                puts 'Opção inválida'
                next
            end
            break
        end
        [@key, @value]
    end
end