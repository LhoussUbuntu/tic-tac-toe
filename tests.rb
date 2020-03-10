# user_spots = [1,2,4,6,3]
# win = [1, 2, 3]
# user_spots.sort.join("").include? win.join("")



def test
    puts "enter a number between 1 and 20 : "
    num = gets.chomp.to_i
    if (num < 1) || (num > 20)
        puts "error, do it again"
        test
    else
        puts "good boy"
    end
  end
  test
  
  
  