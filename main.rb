#!/usr/bin/env ruby
class Game
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @game_over = false
        @board = ["", "1", "2", "3", "4", "5", "6", "7", "8", "9"] # exlude 0 for simplicity
        @win = ["123", "456", "789", "147", "258", "369", "159", "357"]
        @player1_spots = ""
        @player2_spots = ""
        @turn_count = 0
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
        if @board.join("").include? spot1
            @turn_count += 1
            @board[spot1.to_i] = "X"
            @player1_spots += spot1
            check_win(@player1_spots, @player1)
            if !@game_over
                show_board
                player2_turn
            end
        else
            puts "Spot taken or doesn't exist, Try again"
            player1_turn
        end
    end

    def player2_turn
        puts "#{@player2} chose your Spot with : O "
        spot2 = gets.chomp
        if @board.join("").include? spot2
            @turn_count += 1
            @board[spot2.to_i] = "O"
            @player2_spots += spot2
            check_win(@player2_spots, @player3)
            if !@game_over
                show_board
                player1_turn
            end
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

    def check_win(player_spots, name)
        check = 0
        @win.each do |win_win|
            player_spots.scan(/./) do |n|
                if win_win.include? n
                    check += 1
                end
            end
            if check == 3
                puts "#{name} YOU WIN!!!!!!"
                show_board
                @game_over = true
            end
            check = 0
        end
    end
end

game = Game.new("lhoussaine", "Badr")

game.start_game