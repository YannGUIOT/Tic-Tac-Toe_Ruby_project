
class Game
    attr_accessor :current_player, :party

    def initialize
        @playerX = Player.new(request_name(1),"X")
        @playerO = Player.new(request_name(2),"O")
        #if rand(0..1) == 0 
            @current_player = @playerX
        #else
        #    @current_player = @playerO
        #end
        @party = Board.new
        @party.board_display
        self.turn
    end

    def request_name(x)
        system 'clear'
        print "\n PLEASE ENTER PLAYER #{x} NAME : \n >> ".bg_black.yellow if x == 1
        print "\n PLEASE ENTER PLAYER #{x} NAME : \n >> ".bg_black.cyan if x == 2
        return gets.chomp.upcase
    end

    def turn 
        for i in 1..9
            @party.play_turn(@current_player.name, @current_player.value) if @party.test_victory == false
            @party.board_display
            break if @party.test_victory == true
            self.change_current_player if @party.test_victory == false
        end
        self.game_end
    end

    def change_current_player
        case @current_player
        when @playerX then @current_player = @playerO
        when @playerO then @current_player = @playerX
        end
    end


    def game_end
        if @party.test_victory == true
            print "  CONGRATULATIONS #{@current_player.name} !! YOU WON THE PARTY \n\n".bg_black.yellow
        else
            print "  OHH SHIT !! THERE IS NO WINNER ... \n\n".bg_black.red
        end
        self.new_round
    end

    def party_choice
        x = $stdin.getch
        case x
            when '1' then return 1
            when '2' then return 2
            else self.party_choice
        end
    end

    def new_round
        self.ask_new_round
        if self.party_choice == 1
            @party = Board.new
            @party.board_display
            self.turn
        end
    end

    def ask_new_round
        print " ".bg_black.bold*40
        print "\n        DO YOU WANT A NEW PARTY ?       \n".bg_black.bold.yellow
        print " ".bg_black.bold*40
        print "\n  [1] ".bg_black.red
        print " YES                              ".bg_black.bold 
        print "\n  [2] ".bg_black.red
        print " NO                               \n".bg_black.bold
        print " ".bg_black.bold*40
    end

end