# Crie um software que permita que o usuário entre com um texto, o
# idioma em que o texto está escrito e também o idioma para qual ele deseja traduzir o texto 
# e receba como resposta na tela o texto traduzido.

# Você deve utilizar orientação a objetos no seu software
# O resultado de cada tradução (junto com a frase original) 
# deve ser guardado em um arquivo que possua no nome a data e horário da tradução (exp: 10-10-18_10-30.txt)

require_relative 'tradutor'
require_relative 'arquivo'
require_relative 'escolher_idioma'

loop do
    puts "\n -----Tradutor-----"
    puts "Digite o texto para traduzir ou 'sair' para sair:"
    text = gets.chomp
    break if text == 'sair'
    
    id_entrada = Escolher.new("entrada").escolher_idioma
    break if id_entrada[0] == 0

    id_saida = Escolher.new("saida").escolher_idioma
    break if id_saida[0] == 0

    texto_traduzido = Tradutor.new(text, id_entrada[0], id_saida[0]).tratar_traducao
    Arquivo.new(text, id_entrada[1], id_saida[1], texto_traduzido).criar

    puts "Texto em #{id_entrada[1]}: #{text}. Texto em #{id_saida[1]}: #{texto_traduzido}."
end