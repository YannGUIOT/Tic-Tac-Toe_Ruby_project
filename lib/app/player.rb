# ce sont les joueurs. Il doit y avoir 2 instances de cette classe lors d'une partie.
# Variables d'instance : un joueur a un nom (habile) et un symbole ("x" ou "o").

class Player
    #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
    attr_reader :name, :value
    @name = ""
    @value = ""

    def initialize(name,value)
      #TO DO : doit régler son nom et sa valeur
      @name = name
      @value = value
    end

end