# main.rb

require_relative 'calculadora'

print 'Fazer calcular: '
calculo = gets
calculadora = Calculadora.new(calculo)
calculadora.processar_calculo
