# Exte exemplo criará um arquivo chamado example.html com o conteúdo da página example.com/index.html
require 'net/http'

example = Net::HTTP.get('example.com', '/index.html')

# 'w' para escrever no arquivo
File.open('example.html', 'w') do |line|
    line.puts(example)
end
