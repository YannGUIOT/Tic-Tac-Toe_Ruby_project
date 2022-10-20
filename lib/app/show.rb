# cette classe sera une sorte de view. 
# Elle affichera l'état du plateau de jeu à un instant T.

class Show

    def show_board(boardcases_array)
        #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
        system 'clear'
        puts
        print " "*10
        print "       █       █       \n".bg_black
        print " "*10
        print "   ".bg_black
        print "#{boardcases_array[7]}".bg_black.red if boardcases_array[7] == "X"
        print "#{boardcases_array[7]}".bg_black.yellow if boardcases_array[7] != "X"
        print "   █   ".bg_black
        print "#{boardcases_array[8]}".bg_black.red if boardcases_array[8] == "X"
        print "#{boardcases_array[8]}".bg_black.yellow if boardcases_array[8] != "X"
        print "   █   ".bg_black
        print "#{boardcases_array[9]}".bg_black.red if boardcases_array[9] == "X"
        print "#{boardcases_array[9]}".bg_black.yellow if boardcases_array[9] != "X"
        print "   \n".bg_black
        print " "*10
        print "       █       █       \n".bg_black
        print " "*10
        print ""
        print "▄".bg_black*7
        print "█"    
        print "▄".bg_black*7    
        print "█"    
        print "▄".bg_black*7    
        print "\n"   
        print " "*10
        print "       █       █       \n".bg_black
        print " "*10
        print "   ".bg_black
        print "#{boardcases_array[4]}".bg_black.red if boardcases_array[4] == "X"
        print "#{boardcases_array[4]}".bg_black.yellow if boardcases_array[4] != "X"
        print "   █   ".bg_black
        print "#{boardcases_array[5]}".bg_black.red if boardcases_array[5] == "X"
        print "#{boardcases_array[5]}".bg_black.yellow if boardcases_array[5] != "X"
        print "   █   ".bg_black
        print "#{boardcases_array[6]}".bg_black.red if boardcases_array[6] == "X"
        print "#{boardcases_array[6]}".bg_black.yellow if boardcases_array[6] != "X"
        print "   \n".bg_black
        print " "*10
        print "       █       █       \n".bg_black
        print " "*10
        print "▄".bg_black*7
        print "█"    
        print "▄".bg_black*7    
        print "█"    
        print "▄".bg_black*7    
        print "\n"   
        print " "*10
        print "       █       █       \n".bg_black
        print " "*10
        print "   ".bg_black
        print "#{boardcases_array[1]}".bg_black.red if boardcases_array[1] == "X"
        print "#{boardcases_array[1]}".bg_black.yellow if boardcases_array[1] != "X"
        print "   █   ".bg_black
        print "#{boardcases_array[2]}".bg_black.red if boardcases_array[2] == "X"
        print "#{boardcases_array[2]}".bg_black.yellow if boardcases_array[2] != "X"
        print "   █   ".bg_black
        print "#{boardcases_array[3]}".bg_black.red if boardcases_array[3] == "X"
        print "#{boardcases_array[3]}".bg_black.yellow if boardcases_array[3] != "X"
        print "   \n".bg_black
        print " "*10
        print "       █       █       \n\n".bg_black
 
        # puts
        # print " "*10
        # print "▄"*25
        # puts
        # print " "*10
        # print "█       █       █       █\n".bg_black
        # print " "*10
        # print "█   ".bg_black
        # print "#{boardcases_array[7].value}".bg_black.red if boardcases_array[7] == "X"
        # print "#{boardcases_array[7].value}".bg_black.yellow if boardcases_array[7] != "X"
        # print "   █   ".bg_black
        # print "#{boardcases_array[8].value}".bg_black.red if boardcases_array[8] == "X"
        # print "#{boardcases_array[8].value}".bg_black.yellow if boardcases_array[8] != "X"
        # print "   █   ".bg_black
        # print "#{boardcases_array[9].value}".bg_black.red if boardcases_array[9] == "X"
        # print "#{boardcases_array[9].value}".bg_black.yellow if boardcases_array[9] != "X"
        # print "   █\n".bg_black
        # print " "*10
        # print "█       █       █       █\n".bg_black
        # print " "*10
        # print "█"
        # print "▄".bg_black*7
        # print "█"    
        # print "▄".bg_black*7    
        # print "█"    
        # print "▄".bg_black*7    
        # print "█\n"   
        # print " "*10
        # print "█       █       █       █\n".bg_black
        # print " "*10
        # print "█   ".bg_black
        # print "#{boardcases_array[4].value}".bg_black.red if boardcases_array[4] == "X"
        # print "#{boardcases_array[4].value}".bg_black.yellow if boardcases_array[4] != "X"
        # print "   █   ".bg_black
        # print "#{boardcases_array[5].value}".bg_black.red if boardcases_array[5] == "X"
        # print "#{boardcases_array[5].value}".bg_black.yellow if boardcases_array[5] != "X"
        # print "   █   ".bg_black
        # print "#{boardcases_array[6].value}".bg_black.red if boardcases_array[6] == "X"
        # print "#{boardcases_array[6].value}".bg_black.yellow if boardcases_array[6] != "X"
        # print "   █\n".bg_black
        # print " "*10
        # print "█       █       █       █\n".bg_black
        # print " "*10
        # print "█"
        # print "▄".bg_black*7
        # print "█"    
        # print "▄".bg_black*7    
        # print "█"    
        # print "▄".bg_black*7    
        # print "█\n"   
        # print " "*10
        # print "█       █       █       █\n".bg_black
        # print " "*10
        # print "█   ".bg_black
        # print "#{boardcases_array[1].value}".bg_black.red if boardcases_array[1] == "X"
        # print "#{boardcases_array[1].value}".bg_black.yellow if boardcases_array[1] != "X"
        # print "   █   ".bg_black
        # print "#{boardcases_array[2].value}".bg_black.red if boardcases_array[2] == "X"
        # print "#{boardcases_array[2].value}".bg_black.yellow if boardcases_array[2] != "X"
        # print "   █   ".bg_black
        # print "#{boardcases_array[3].value}".bg_black.red if boardcases_array[3] == "X"
        # print "#{boardcases_array[3].value}".bg_black.yellow if boardcases_array[3] != "X"
        # print "   █\n".bg_black
        # print " "*10
        # print "█       █       █       █\n".bg_black
        # print " "*10
        # print "█"
        # print "▄".bg_black*7
        # print "█"    
        # print "▄".bg_black*7    
        # print "█"    
        # print "▄".bg_black*7    
        # print "█\n"   
        # puts "\n"
      end
  
end