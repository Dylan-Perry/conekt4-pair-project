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
  end
  
  def display_welcome_message
    puts "Welcom3 to Conekt4!"
    puts "Connect four pieces in a row to win!"
  end
  
  def main_menu
    puts "1 = Human v CPU"
    puts "2 = Exit"
    
    while user_input = gets.chomp
      case user_input
      when "1"
        break
      when "2"
        abort "Quitter!"
      else
        puts "Please select either 1 or 2"
      end
    end
    take_turn
  end

  def take_turn
    @board.display_board # display current board state
    puts "Please select a column by entering its number."

    while user_input = gets.chomp # input loop for player column selection
      if user_input.to_i < 1 || user_input.to_i > @board.columns # ensures the input matches one of the columns
        puts "Error: Selected column does not exist."
      elsif @board.board_matrix.column(user_input.to_i - 1)[0] != "\u{25cc}" # ensures the column is not already full
        puts "Error: Column is already full."
      else
        @board.play_piece(user_input.to_i) # plays the piece, and breaks the loop
        # require 'pry'; binding.pry
        break
      end
      # case user_input ### why does this when block not issue full column errors, but the if version does?
      # when user_input.to_i < 1 || user_input.to_i > @board.columns
      #   puts "Error: Selected column does not exist."
      # when @board.board_matrix.column(user_input.to_i - 1)[0] != "\u{25cc}"
      #   puts "Error: Column is already full."
      # else
      #   @board.play_piece(user_input.to_i)
      #   require 'pry'; binding.pry
      #   break
      # end
    end
    take_turn # advances to the next turn
  end
  
  def end_game
    exit
    puts "7H4NK5 4 P74Y1N6!"
  end

end