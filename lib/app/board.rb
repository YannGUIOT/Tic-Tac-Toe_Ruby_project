
class Board
    attr_accessor :boardcases_array
    @computer_case = 0

    def initialize
        @boardcases_array = []
      for i in 1..9
        @boardcases_array[i] = " "
      end
        @computer_case = 0
    end
    
    def board_display
        Show.new.show_board(@boardcases_array)
    end

    def play_turn(current_player_name, current_player_value)
        self.display_player_turn(current_player_name)
        played_case = self.player_choice
        self.test_and_play_case(played_case, current_player_value)
    end

    def play_turn_vs_computer(current_player_name, current_player_value)
        self.display_player_turn(current_player_name)
        if current_player_value == "X"
            played_case = self.player_choice 
            self.test_and_play_case(played_case, current_player_value)
        else
            self.computer_play
        end
    end

    def temp_array_init
        @temp_boardcases_array = []
        for n in 1..9
            @temp_boardcases_array << @boardcases_array[n]
        end
    end

    def computer_play
        @computer_case = 0
        find = false

        if find == false
            find = self.find_winner_case
        end

        if find == false
            find = self.find_against_case
        end
        
        if find == false
            self.find_random_case
        end 

        @boardcases_array[@computer_case.to_i] = "O"
    end

    def find_winner_case
        find_case = false
        for i in 0..8
            self.temp_array_init
            if @temp_boardcases_array[i].include? " "
                @temp_boardcases_array[i] = "O"
                if find_case == false
                    find_case = true if self.test_win_computer == true
                end
            end
        end
        return find_case
    end

    def find_against_case
        find_case = false
        for i in 0..8
            self.temp_array_init
            if @temp_boardcases_array[i].include? " "
                @temp_boardcases_array[i] = "O"
                if find_case == false
                    find_case = true if self.test_against_player == true
                end
            end
        end
        return find_case
    end

    def find_random_case
        find_case = false
        while find_case == false
            x = rand(1..9)
            if @boardcases_array[x].include? " "
                @computer_case = x
                find_case = true
            end
        end
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
        return there_is_winner
    end

    def test_ligne(a,b,c)
        temp_str = @boardcases_array[a] + @boardcases_array[b] + @boardcases_array[c]
        if temp_str == "XXX" || temp_str == "OOO"
            return true
        else
            return false
        end
    end

    def test_win_computer
        there_is_winner = self.test_ligne_win_computer(0,1,2)
        there_is_winner = self.test_ligne_win_computer(3,4,5) if there_is_winner == false
        there_is_winner = self.test_ligne_win_computer(6,7,8) if there_is_winner == false
        there_is_winner = self.test_ligne_win_computer(0,3,6) if there_is_winner == false
        there_is_winner = self.test_ligne_win_computer(1,4,7) if there_is_winner == false
        there_is_winner = self.test_ligne_win_computer(2,5,8) if there_is_winner == false
        there_is_winner = self.test_ligne_win_computer(0,4,8) if there_is_winner == false
        there_is_winner = self.test_ligne_win_computer(2,4,6) if there_is_winner == false
        return there_is_winner
    end

    def test_ligne_win_computer(a,b,c)
        temp_str = @temp_boardcases_array[a] + @temp_boardcases_array[b] + @temp_boardcases_array[c]
        if temp_str == "OOO"
            @computer_case = (a+1) if @boardcases_array[a+1].include? " "
            @computer_case = (b+1) if @boardcases_array[b+1].include? " "
            @computer_case = (c+1) if @boardcases_array[c+1].include? " "
            # print "test ligne_win_computer renvoie true temp_str = #{temp_str}\n"
            return true
        else
            return false
        end
    end

    def test_against_player
        there_is_winner = self.test_ligne_against_player(0,1,2)
        there_is_winner = self.test_ligne_against_player(3,4,5) if there_is_winner == false
        there_is_winner = self.test_ligne_against_player(6,7,8) if there_is_winner == false
        there_is_winner = self.test_ligne_against_player(0,3,6) if there_is_winner == false
        there_is_winner = self.test_ligne_against_player(1,4,7) if there_is_winner == false
        there_is_winner = self.test_ligne_against_player(2,5,8) if there_is_winner == false
        there_is_winner = self.test_ligne_against_player(0,4,8) if there_is_winner == false
        there_is_winner = self.test_ligne_against_player(2,4,6) if there_is_winner == false
        return there_is_winner
    end

    def test_ligne_against_player(a,b,c)
        temp_str = @temp_boardcases_array[a] + @temp_boardcases_array[b] + @temp_boardcases_array[c]
        if temp_str == "XXO" || temp_str == "XOX" || temp_str == "OXX"
            @computer_case = (a+1) if @boardcases_array[a+1].include? " "
            @computer_case = (b+1) if @boardcases_array[b+1].include? " "
            @computer_case = (c+1) if @boardcases_array[c+1].include? " "
            return true
        else
            return false
        end
    end

end