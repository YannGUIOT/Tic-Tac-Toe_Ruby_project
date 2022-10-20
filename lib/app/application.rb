class Application
    def perform
      choice = self.menu
      case choice
      when 1
        Game.new
        self.perform
      when 2
        system 'clear'
        exit
      end
    end

    def menu
        system 'clear'
        print " ".bg_black.bold*29
        print "\n WELCOME TO TIC-TAC-TOE GAME \n".bg_black.bold.yellow
        print " ".bg_black.bold*29
        print "\n  [1] ".bg_black.red
        print " NOUVELLE PARTIE       ".bg_black.bold 
        print "\n  [2] ".bg_black.red
        print " EXIT                  \n".bg_black.bold
        print " ".bg_black.bold*29
        self.user_choice
    end

    def user_choice
        x = $stdin.getch
        case x
            when '1' then return 1
            when '2' then return 2
            else self.user_choice
        end
    end
end