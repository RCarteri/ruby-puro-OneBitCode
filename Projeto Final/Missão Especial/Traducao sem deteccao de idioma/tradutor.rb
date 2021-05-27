require 'net/http'
require 'openssl'
require 'json'

class Tradutor
    def initialize text, id_entrada, id_saida
        @text = text
        @id_entrada = id_entrada
        @id_saida = id_saida
    end

    def traduzir
        url = URI("https://google-translate1.p.rapidapi.com/language/translate/v2")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Post.new(url)
        request["content-type"] = 'application/x-www-form-urlencoded'
        request["accept-encoding"] = 'application/gzip'
        request["x-rapidapi-key"] = '9545afaa2bmshfeee3c551d1dcbbp10dc71jsn15c863e8444d'
        request["x-rapidapi-host"] = 'google-translate1.p.rapidapi.com'
        request.body = "q=#{@text}&target=#{@id_saida}&source=#{@id_entrada}"

        response = http.request(request)
        response.read_body
    end

    def tratar_traducao
        hash_traducao = JSON.parse(traduzir)
        hash_traducao["data"]["translations"][0]["translatedText"]
    end
end




