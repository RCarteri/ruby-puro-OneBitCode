def talk first_name, last_name
    puts "Olá #{first_name} #{last_name}, como vai você?"
end

first_name = "Ricardo"
last_name = "Carteri"
talk first_name, last_name

def signal color='vermelho'
    puts "O sinal está #{color}"
end

signal
color = 'verde'
signal color