
class GameVsComptuter
    attr_accessor :current_player, :party

    def initialize
        @playerX = Player.new(self.request_name,"X")
        @playerO = Player.new("COMPUTER","O")
        @current_player = @playerX
        @party = Board.new
        @party.board_display
        self.turn
    end

    def request_name
        system 'clear'
        print "\n PLEASE ENTER YOUR NAME : \n >> ".bg_black.yellow
        return gets.chomp.upcase
    end

    def turn 
        for i in 1..9
            @party.play_turn_vs_computer(@current_player.name, @current_player.value) if @party.test_victory == false
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
            @playerX.wins += 1 if @current_player.value == "X"
            @playerO.wins += 1 if @current_player.value == "O"
            self.display_win
        else
            print "\n ... THERE IS NO WINNER ...  \n".bg_black.red.bold
        end
        self.new_round
    end

    def display_win
        print "\n       CONGRATULATIONS       \n".bg_black.bold.yellow
        str = ((29-@current_player.name.length)/2).to_i
        print " ".bg_black*str
        print @current_player.name.bg_black.bold.yellow
        print " ".bg_black*(str+1) if @current_player.name.length.even?
        print " ".bg_black*str if @current_player.name.length.odd?
        puts
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
        self.display_stats
        self.ask_new_round
        if self.party_choice == 1
            @party = Board.new
            @party.board_display
            self.turn
        end
    end

    def ask_new_round
        print " ".bg_black.bold*29
        print "\n  DO YOU WANT A NEW PARTY ?  \n".bg_black.bold.yellow
        print " ".bg_black.bold*29
        print "\n  [1] ".bg_black.red
        print " YES                   ".bg_black.bold.yellow 
        print "\n  [2] ".bg_black.red
        print " NO                    \n".bg_black.bold.yellow
        print " ".bg_black.bold*29
    end

    def display_stats
        print " ".bg_black*29
        print "\n"
        str = ((11-@playerX.name.length)/2).to_i
        print " ".bg_black*str
        print "#{@playerX.name}".bg_black.bold
        print " ".bg_black*(str+1) if @playerX.name.length.even?
        print " ".bg_black*str if @playerX.name.length.odd?
        print "| TOTAL WINS : #{@playerX.wins}".bg_black.bold
        print " ".bg_black if @playerX.wins > 9
        print "  ".bg_black if @playerX.wins < 10
        puts
        str = ((11-@playerO.name.length)/2).to_i
        print " ".bg_black*str
        print "#{@playerO.name}".bg_black.bold
        print " ".bg_black*(str+1) if @playerO.name.length.even?
        print " ".bg_black*str if @playerO.name.length.odd?
        print "| TOTAL WINS : #{@playerO.wins}".bg_black.bold
        print " ".bg_black if @playerO.wins > 9
        print "  ".bg_black if @playerO.wins < 10
        puts
    end

end