require 'cpf_cnpj'
require 'os'

class Pessoa
    attr_accessor :nome, :idade, :cpf

    def initialize(nome, idade, cpf)
        @nome = nome
        @idade = idade
        @cpf = CPF.new(cpf)
    end

    def greeting
        puts "Olá meu nome é #{@nome} e eu tenho #{@idade} anos"
    end

    def my_os
        if OS.windows?
            "Windows"
        elsif OS.mac?
            "Osx"
        else
            "Linux"
        end
    end

    def info_pc
        puts "#{OS.cpu_count} núcleos \n#{OS.bits} bits \nSO: #{my_os}"
    end

end