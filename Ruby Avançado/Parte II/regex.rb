# Maneiras de criar uma regex: /…/, %r{…} ou Regexp.new(‘…’)
/expressao/
%r{expressao}
Regexp.new('expressao')

# Validar qual a posição do array onde a expressão começa, nesse caso retorna 2
puts (/by/) =~ 'ruby'

# Retornará nil se não existe esse valor
puts (/bi/) =~ 'ruby'

# Método match
phrase = "Hellow, how are you?"

# Buscar um valor dentro de uma string
match_data = /how/.match(phrase)

# Retorna o que está antes da expressão
puts match_data.pre_match
# Retorna o que está depois da expressão
puts match_data.post_match

# Buscar por caracteres especiais
/\?/.match('Tudo bem?')
puts (/bem\!\!\!/).match('Muito bem!!!')

# Buscar um dado alternativo, neste exemplo retornará a string "texto" ou "rexto"
puts (/[tr]exto/).match('-trexto- começando com t')

# Buscar por um range, neste exemplo buscara um número de 1 a 5 e de a a z
puts (/[1-5]/).match('123')
puts (/[a-z]/).match('Oi')
# Buscar por uma letra A e qualquer número decimal com \d
puts (/A\d/).match('A4')

# Repetir um valor buscado com {}
puts ("A343").match(/[A-Z]\d{3}/)

# Para pegar um número mínimo ou mais usa-se ","
puts ("BBB AAAA").match(/A{3,}/)