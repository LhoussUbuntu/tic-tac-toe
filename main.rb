class Game
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @game_over = false
        @board = ["", "1", "2", "3", "4", "5", "6", "7", "8", "9"] # exlude 0 for simplicity
        @win = ["123", "456", "789", "147", "258", "369", "159", "357"]
        @spot_availabale = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    end

    def show_board
        i = 1
        while i < @board.length
            if (i+2) % 3 == 0
                p @board[i..i+2] 
                puts 
            end
            i += 1
        end
    end

    def player1_turn
        puts "#{@player1} chose your Spot with : X "
        spot1 = gets.chomp
        if @spot_availabale.join("").include? spot1
            @board[spot1.to_i] = "X"
            show_board
            player2_turn
        else
            puts "Spot taken or doesn't exist, Try again"
            player1_turn
        end
    end

    def player2_turn
        puts "#{@player2} chose your Spot with : O "
        spot2 = gets.chomp
        if @spot_availabale.join("").include? spot2
            @board[spot2.to_i] = "O"
            show_board
            player1_turn
        else
            puts "Spot taken or doesn't exist, Try again"
            player2_turn
        end
    end

    def start_game
        puts "welcome #{@player1} and #{@player2}"
        puts
        show_board
        player1_turn
    end
end

game = Game.new("lhoussaine", "Adel")

game.start_game