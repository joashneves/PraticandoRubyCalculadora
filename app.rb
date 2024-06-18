print 'Fazer calcular: '
calculo = gets.chomp  
novoCalculo = calculo.split("")

puts "\n"
print novoCalculo
puts "\n"
# Inicializa variáveis para armazenar os números
x = nil
x2 = nil

# Inicializa o resultado
result = nil

# Inicializa variáveis para armazenar os números e o operador
arraynumero = []

# Itera sobre os caracteres da expressão
novoCalculo.each_with_index do |char, index|
    if ["+", "-", "*", "/"].include?(char) 
      # Converte as partes da expressão para inteiros
      for i in novoCalculo
        x = novoCalculo[0...index].join.to_i
        if char =~ /\d/  # Verifica se o caractere é um dígito
          numero_atual += char
        else
          numeroAtual = i.to_i
          if numeroAtual != 0
          # Se encontrar um operador, armazena o número completo e reseta numero_atual
            arraynumero << i.to_i
          end
          numero_atual = ""
        end

        puts "o numeor é: #{i} = #{x} e o x[#{i}] é #{arraynumero} e #{index}"
      end
      
      case char
      when "+"
        puts 'Operação: soma'
        result = arraynumero[0] + arraynumero[1]
      when "-"
        puts 'Operação: subtração'
        result = arraynumero[0] - arraynumero[1]
      when "*"
        puts 'Operação: multiplicação'
        result = arraynumero[0] * arraynumero[1]
      when "/"
        if arraynumero[1] == 0
          puts 'Não é possível dividir por 0'
        else
          puts 'Operação: divisão'
          result = arraynumero[0] / arraynumero[1]
        end
      else
        puts 'Operação inválida'
      end
    end
  end
# Imprime o resultado, se houver um
if result
    puts "Resultado: #{calculo} = #{result}"
end
