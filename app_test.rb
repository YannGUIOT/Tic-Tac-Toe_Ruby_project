

def test_and_play_case(played_case,str)
    tab = [".",".",".",".",".",".",".",".","."]
    test = 0
    while test == 0

        if tab[played_case].include? "."
            tab[played_case] = str
            test = 1
            print tab
            break
        else
            print "else..."
        end
    end
end

test_and_play_case(3,"O")