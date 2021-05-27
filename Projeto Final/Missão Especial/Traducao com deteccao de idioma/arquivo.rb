class Arquivo
    def initialize text, id_entrada, id_saida, texto_traduzido
        @text = text
        @id_entrada = id_entrada
        @id_saida = id_saida
        @texto_traduzido = texto_traduzido
    end

    def criar
        Dir.mkdir 'traducoes' unless File.exists?'traducoes'
        local_arquivo = "traducoes/" + Time.now.strftime('%d-%m-%y_%H-%M.txt')
        File.open(local_arquivo, 'a') do |line|
            line.puts "Texto em #{@id_entrada}: #{@text}. Texto em #{@id_saida}: #{@texto_traduzido} \n"
        end
    end
end