require 'uri'
require 'net/http'
require 'openssl'

class Service
    def post_traducao url, question
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Post.new(url)
        request["content-type"] = 'application/x-www-form-urlencoded'
        request["accept-encoding"] = 'application/gzip'
        request["x-rapidapi-key"] = '9545afaa2bmshfeee3c551d1dcbbp10dc71jsn15c863e8444d'
        request["x-rapidapi-host"] = 'google-translate1.p.rapidapi.com'
        request.body = question

        response = http.request(request)
        response.read_body
    end
end