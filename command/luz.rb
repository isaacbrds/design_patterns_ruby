# Interface Command
class Command
    def execute
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
end
  
  # Comandos Concretos
class LightOnCommand < Command
    def initialize(light)
      @light = light
    end
  
    def execute
      @light.turn_on
    end
end
  
class LightOffCommand < Command
    def initialize(light)
      @light = light
    end
  
    def execute
      @light.turn_off
    end
end
  
  # Receptor
class Light
    def turn_on
      puts "Luz ligada"
    end
  
    def turn_off
      puts "Luz desligada"
    end
end
  
  # Invocador
class RemoteControl
    def initialize
      @commands = {}
    end
  
    def register(command_name, command)
      @commands[command_name] = command
    end
  
    def execute(command_name)
      command = @commands[command_name]
      command.execute if command
    end
end
  
  # Exemplo de uso
  light = Light.new
  remote = RemoteControl.new
  
  remote.register(:ligar, LightOnCommand.new(light))
  remote.register(:desligar, LightOffCommand.new(light))
  
  remote.execute(:ligar)
  remote.execute(:desligar)
  