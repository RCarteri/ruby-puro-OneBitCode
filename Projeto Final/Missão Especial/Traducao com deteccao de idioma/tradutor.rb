require 'json'
require_relative 'detectar_idioma'
require_relative 'service'
require_relative 'idiomas'

class Tradutor
    def initialize text=0, id_saida=0
        @text = text
        @id_saida = id_saida
    end

    def traduzir
        detector = Detector.new @text
        @@id_entrada = detector.tratar_deteccao

        url = URI("https://google-translate1.p.rapidapi.com/language/translate/v2")
        question = "q=#{@text}&target=#{@id_saida}&source=#{@@id_entrada}"

        service = Service.new
        service.post_traducao url, question
    end

    def idioma_origem
        lista = Idiomas.new.lista_idiomas
        lista.each do |hash|
            if hash.keys.first == @@id_entrada
                return [hash.values.first, hash.keys.first]
            end
        end
    end

    def tratar_traducao
        hash_traducao = JSON.parse(traduzir)
        hash_traducao["data"]["translations"][0]["translatedText"]
    end

    
end


