# Crie um software que permita que o usuário entre com um texto, o
# idioma em que o texto está escrito e também o idioma para qual ele deseja traduzir o texto 
# e receba como resposta na tela o texto traduzido.

# Você deve utilizar orientação a objetos no seu software
# O resultado de cada tradução (junto com a frase original) 
# deve ser guardado em um arquivo que possua no nome a data e horário da tradução (exp: 10-10-18_10-30.txt)

require_relative 'idiomas'
require_relative 'tradutor'
require_relative 'arquivo'

loop do
    puts "\n -----Tradutor-----"
    puts "Digite o texto para traduzir ou 'sair' para sair:"
    text = gets.chomp
    break if text == 'sair'

    idioma = Idiomas.new.retornar_idioma
    
    if idioma[0] == 0
        puts idioma[1]
        break
    end

    texto_traduzido = Tradutor.new(text, idioma[0]).tratar_traducao
    id_entrada = Tradutor.new.idioma_origem

    Arquivo.new(text, id_entrada[0], idioma[1], texto_traduzido).criar

    puts "Texto em #{id_entrada[0]}: #{text}. Texto em #{idioma[1]}: #{texto_traduzido}."
end
