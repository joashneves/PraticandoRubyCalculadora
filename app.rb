print 'Fazer calcular (+, -, *, /): '
calculo = gets.chomp

# Solicita a entrada do usuário e converte para inteiro imediatamente
print 'Numero 1: '
x = gets.to_i
print 'Numero 2: '
x2 = gets.to_i
result = 0
case calculo
when "+"
    print 'soma'
# Realiza a soma dos valores inteiros
result = x + x2
when "-"
# Realiza a soma dos valores inteiros
result = x - x2
when "*"
result = x * x2
when "/"
    if x2 == 0
        puts 'Não é possivel dividir por 0'
    else 
        result = x / x2
    end
else
    puts 'Operação inválida'
end
# Imprime o resultado, se houver um
if result
    puts "Resultado: #{x} #{calculo} #{x2} = #{result}"
end