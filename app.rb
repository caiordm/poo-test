require 'cpf_cnpj'
require_relative 'pessoa'

def cadastrar_usuario
    print "Nome: "
    nome = gets
    print "Idade: "
    idade = gets.chomp.to_i
    print "CPF: "
    cpf = gets.chomp.to_i
    if CPF.valid?(cpf, strict: true)
        pessoa = Pessoa.new(nome, idade, cpf)
        puts "#{pessoa.cpf.formatted} cadastrado!"
    else
        puts "CPF inválido, tente novamente"
        cadastrar_usuario
    end
end

loop do
    puts "Olá, o que deseja fazer?"
    puts "0. Encerrar aplicação"
    puts "1. Fazer cadastro de usuários"
    puts "2. Conferir informações do PC"
    option = gets.chomp.to_i

    case option
    when 1
        cadastrar_usuario
    end

    break if option == 0
end
puts "Aplicação encerrada"