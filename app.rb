print 'Fazer calcular: '
calculo = gets.chomp  
novoCalculo = calculo.split("")

puts "\n"
print novoCalculo
puts "\n"

# Inicializa variáveis para armazenar os números e o operador
arraynumero = []
arrayoperador = []


      # Converte as partes da expressão para inteiros
      for i in novoCalculo
        if ["+", "-", "*", "/"].include?(i) 
          arrayoperador << i
        else
        if i =~ /\d/  # Verifica se o caractere é um dígito
          arraynumero << i.to_i
        else
          numeroAtual = i.to_i
          if numeroAtual != 0
          # Se encontrar um operador, armazena o número completo e reseta numero_atual
            arraynumero << i.to_i
          end
        puts "o Info : arraynumero = #{arraynumero} e arrayoperador = #{arrayoperador} o i = #{i}"
        end

      # Inicializa o resultado
result = arraynumero[0]

# Itera sobre o array para realizar as operações
x = 0
y = 0
while x < arraynumero.size

  puts "o Info : arraynumero = #{arraynumero} e arrayoperador = #{arrayoperador} o x = #{x}"

  operador = arrayoperador[y]
  numero = arraynumero[x]

  puts "o Info : numero = #{numero} e operador = #{operador}"
  case operador
  when "+"
    result += numero
    y += 1
  when "-"
    result -= numero
    y += 1
  when "*"
    result *= numero
    y += 1
  when "/"
    y += 1
    if numero == 0
      puts 'Não é possível dividir por 0'
      result = nil
      break
    else
      result /= numero
    end
  else
    puts 'Operação inválida'
  end
  x += 2
end
    end
  end
# Imprime o resultado, se houver um
if result
    puts "Resultado: #{calculo} = #{result}"
end
