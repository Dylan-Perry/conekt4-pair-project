require 'matrix'

class Game

  attr_reader :board, :player

  def initialize
    @board = board
    @player = player
  end
  
# *************** MENU ****************
# https://medium.com/@cstatro/maintainable-cli-menus-in-ruby-1b2b51b75b3a
# https://www.rubyguides.com/2019/03/ruby-exit/
  
  def display_welcome_message
    puts "Welcom3 to Conekt4!"
    puts "Connect four pieces in a row to win!"
  end
  
  # infinite recursion going back to display_player_selection
  # but not if we go back to the welcome menu!!
  def display_player_selection
    puts "Choose wisely..."
    puts "1 = Human v CPU"
    puts "2 = Run away scaredy cat!"
  
    input = gets.chomp.to_i
    
    if input == 1
      start_game
    elsif input == 2 || input == "q"
      abort "Quitter!"
    else
      puts "You have choosen...poorly. GOODBYE!"
      display_welcome_message
    end
  end
  
  def start_game
    @board = Board.new(6, 7)
    puts "Choose a column to place piece"
  end

  # def game_state #board_state??

  # end

  def end_game
    exit
    puts "7H4NK5 4 P74Y1N6!"
  end

end