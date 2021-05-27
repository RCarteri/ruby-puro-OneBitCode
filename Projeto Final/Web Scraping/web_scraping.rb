require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)
# para fazer chamadas https
https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body)

h1 = doc.at('h1')
puts h1.content

# Para encontrar uma tag 'a' dentro de um 'h3'
last_post = doc.at('h3 a')
puts last_post.content
puts last_post['href']

# Procurar por todos os posts que estão na página inicial do onebitcode com o método search
doc.search('h3 a').each do |a|
    puts a.content
    puts a['href']
    puts ''
end
