require 'matrix'
require './lib/board'
class Game

  attr_reader :board, :player
  
  def initialize
    @board = board
    @player = player
  end
  
  def start_game
    @board = Board.new(6, 7)
    display_welcome_message
    main_menu
    # take_turn(player_1)
    puts "Choose a column to place piece"
    
  end
  
  def display_welcome_message
    puts "Welcom3 to Conekt4!"
    puts "Connect four pieces in a row to win!"
  end
  
  def main_menu
    puts "1 = Human v CPU"
    puts "2 = Exit"
    # input = gets.chomp.to_i
    
    while user_input = gets.chomp
      case user_input
      when "1"
        #take_turn(player_1)
        break
      when "2"
        abort "Quitter!"
      else
        puts "Please select either 1 or 2"
      end
      @board.display_board
    end
  end
  
  def end_game
    exit
    puts "7H4NK5 4 P74Y1N6!"
  end

end