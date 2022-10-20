
class Board
    attr_accessor :boardcases_array

    def initialize
        @boardcases_array = []
      for i in 1..9
        @boardcases_array[i] = " "
      end
    end
    
    def board_display
        Show.new.show_board(@boardcases_array)
    end

    def play_turn(current_player_name, current_player_value)
        self.display_player_turn(current_player_name)
        played_case = self.player_choice
        self.test_and_play_case(played_case, current_player_value)
    end

    def display_player_turn(current_player_name)
        str = ((29-current_player_name.length)/2).to_i
        puts
        print " ".bg_black*str
        print current_player_name.bg_black.bold.yellow
        print " ".bg_black*(str+1) if current_player_name.length.even?
        print " ".bg_black*str if current_player_name.length.odd?
        print "\n       IT'S YOUR TURN !      \n".bg_black
        print " ".bg_black*29
        puts
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
        while test == 0
            if @boardcases_array[played_case].include? " "
                @boardcases_array[played_case] = current_player_value
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
        there_is_winner = self.test_ligne(3,5,7) if there_is_winner == false
        return true if there_is_winner == true
        return false if there_is_winner == false
    end

    def test_ligne(a,b,c)
        temp_str = @boardcases_array[a] + @boardcases_array[b] + @boardcases_array[c]
        if temp_str == "XXX" || temp_str == "OOO"
            return true
        else
            return false
        end
    end
end