# Exibir a data completa atual
time = Time.now
puts time

# Exibir ano, mês e dia
puts time.year
puts time.month
puts time.day

# Exibir a data formatada
puts time.strftime('%d/%m/%y')

# validar se é o dia informado
puts time.saturday?

# Comparar duas datas
time2 = Time.now
puts time == time2
puts time.year == time2.year