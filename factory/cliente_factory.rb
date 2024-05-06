# Implementação Concreta
class Cliente
    def initialize(nome, email)
        @nome = nome
        @email = email
    end
    def info
      "Cliente de #{@nome} e #{@email}"
    end
  end
  
  # Factory
  class ClienteFactory
    def self.create(nome, email)
      Cliente.new(nome, email)
    end
  end
  
  # Exemplo de uso
  cliente = ClienteFactory.create('Joelma', 'joelma@calipso.com')
  puts cliente.info
  