require 'json'
require_relative 'service'

class Detector
    def initialize text
        @text = text
    end

    def detectar_idioma
        url = URI("https://google-translate1.p.rapidapi.com/language/translate/v2/detect")
        question = "q=#{@text}"
        service = Service.new
        service.post_traducao url, question
    end
    
    def tratar_deteccao
        hash_deteccao = JSON.parse(detectar_idioma)
        hash_deteccao["data"]["detections"][0][0]["language"]
    end
end
