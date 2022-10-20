
class Show
    @temp_array = []

    def show_board(boardcases_array)
        @temp_array = boardcases_array
        system 'clear'
        print " ".bg_black.bold*29
        print "\n WELCOME TO TIC-TAC-TOE GAME \n".bg_black.bold.yellow
        print " ".bg_black.bold*29
        print "\n          █       █          \n".bg_black
        print " ".bg_black*6
        self.display_case(7)
        print "   █   ".bg_black
        self.display_case(8)
        print "   █   ".bg_black
        self.display_case(9)
        print "      \n".bg_black
        print "          █       █          \n".bg_black
        print " ".bg_black*3
        print "▄".bg_black*7
        print "█"    
        print "▄".bg_black*7    
        print "█"    
        print "▄".bg_black*7    
        print "   \n".bg_black   
        print "          █       █          \n".bg_black
        print " ".bg_black*6
        self.display_case(4)
        print "   █   ".bg_black
        self.display_case(5)
        print "   █   ".bg_black
        self.display_case(6)
        print "      \n".bg_black
        print "          █       █          \n".bg_black
        print " ".bg_black*3
        print "▄".bg_black*7
        print "█"    
        print "▄".bg_black*7    
        print "█"    
        print "▄".bg_black*7    
        print "   \n".bg_black  
        print "          █       █          \n".bg_black
        print " ".bg_black*6
        self.display_case(1)
        print "   █   ".bg_black
        self.display_case(2)
        print "   █   ".bg_black
        self.display_case(3)
        print "      \n".bg_black
        print "          █       █          \n".bg_black
        print " ".bg_black*29

    end

    def display_case(num)
        case @temp_array[num]
        when "X" then print "#{@temp_array[num]}".bg_black.red.bold
        when "O" then print "#{@temp_array[num]}".bg_black.green.bold
        when " " then print "#{@temp_array[num]}".bg_black
        end
    end
  
end