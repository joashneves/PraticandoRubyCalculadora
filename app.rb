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

# Itera sobre os caracteres da expressão
novoCalculo.each_with_index do |char, index|
    if ["+", "-", "*", "/"].include?(char)
      # Converte as partes da expressão para inteiros
      x = novoCalculo[0...index].join.to_i
      x2 = novoCalculo[(index+1)..-1].join.to_i
  
      case char
      when "+"
        puts 'Operação: soma'
        result = x + x2
      when "-"
        puts 'Operação: subtração'
        result = x - x2
      when "*"
        puts 'Operação: multiplicação'
        result = x * x2
      when "/"
        if x2 == 0
          puts 'Não é possível dividir por 0'
        else
          puts 'Operação: divisão'
          result = x / x2
        end
      else
        puts 'Operação inválida'
      end
    end
  end
# Imprime o resultado, se houver um
if result
    puts "Resultado: #{x} #{calculo} #{x2} = #{result}"
end
