
class Player
    attr_reader :name, :value
    attr_accessor :wins
    @name = ""
    @value = ""
    @wins = 0

    def initialize(name,value)
      @name = name
      @value = value
      @wins = 0
    end

end