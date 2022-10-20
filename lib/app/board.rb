
class Board
    attr_accessor :boardcases_array
    attr_reader :winner
    @@boardcases_array = []

    def initialize
      for i in 1..9
        @@boardcases_array[i] = " "
      end
    end
  
    def play_turn(current_player_name, current_player_value)
        system 'clear'
        print " "*8
        print "  Hey #{current_player_name} c'est à ton tour ! \n".bg_black.green
        Show.new.show_board(@@boardcases_array)
        played_case = self.player_choice
        self.test_and_play_case(played_case, current_player_value)
    end

    def player_choice
        x = $stdin.getch
        case x
            when '1' then return 1
            when '2' then return 2
            when '3' then return 3
            when '4' then return 4
            when '5' then return 5
            when '6' then return 6
            when '7' then return 7
            when '8' then return 8
            when '9' then return 9
            else self.player_choice
        end
    end

    def test_and_play_case(played_case, current_player_value)
        test = 0
        print " played case : #{played_case} \n bordcases_array[] : #{@@bordcases_array}\n"
        while test == 0
            if @@boardcases_array[played_case] == " "
                @@boardcases_array[played_case] = current_player_value
                test = 1
                break
            else
                played_case = self.player_choice
            end
        end
    end
  
    def test_victory
        there_is_winner = self.test_ligne(1,2,3)
        there_is_winner = self.test_ligne(4,5,6) if there_is_winner == false
        there_is_winner = self.test_ligne(7,8,9) if there_is_winner == false
        there_is_winner = self.test_ligne(1,4,7) if there_is_winner == false
        there_is_winner = self.test_ligne(2,5,8) if there_is_winner == false
        there_is_winner = self.test_ligne(3,6,9) if there_is_winner == false
        there_is_winner = self.test_ligne(1,5,9) if there_is_winner == false
        there_is_winner = self.test_ligne(3,5,9) if there_is_winner == false
        return true if there_is_winner == true
        return false if there_is_winner == false
    end

    def test_ligne(a,b,c)
        temp_str = @@boardcases_array[a] + @@boardcases_array[b] + @@boardcases_array[c]
        if temp_str == "XXX" || temp_str == "OOO"
            @winner_value = "X" if temp_str == "XXX"
            @winner_value = "O" if temp_str == "OOO"
            system 'clear'
            puts "\n"
            Show.new.show_board(@@boardcases_array)
            return true
        else
            return false
        end
    end


end