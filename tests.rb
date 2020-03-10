# user_spots = [1,2,4,6,3]
# win = [1, 2, 3]
# user_spots.sort.join("").include? win.join("")



# def test
#     puts "enter a number between 1 and 20 : "
#     num = gets.chomp.to_i
#     if (num < 1) || (num > 20)
#         puts "error, do it again"
#         test
#     else
#         puts "good boy"
#     end
#   end
#   test
  

# def test(i)
#     arra = [0,1,2,3,4,5,6,7,8,9]
#     arra.delete_at(i)
#     p arra
# end

# test(5)


win = ["133", "356", "389", "347", "358", "369", "159", "357"]
player1 = "12598"
check = 0
win.each do |win_win|
    player1.each_char do |n|
        if win_win.include? n
            check += 1
        end
    end
    if check == 3
        puts "YOU WIN!!!!!!"
        break
    end
end


