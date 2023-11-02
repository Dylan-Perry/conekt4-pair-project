require 'matrix'
require './lib/board'
require './lib/player'

class Game

  attr_reader :board, :turns, :player_one, :player_two
  
  def initialize
    @board = board
    @turns = 0
    @player_one = Player.new
    @player_two = Player.new
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
        @player_two.make_computer
        break
      when "2"
        abort "Quitter!"
      else
        puts "Please select either 1 or 2"
      end
    end
    take_turn
  end

  def valid_input(user_input)
    if user_input.to_i < 1 || user_input.to_i > @board.columns # ensures the input matches one of the columns
      return "error_nocolumn"
    elsif @board.board_matrix.column(user_input.to_i - 1)[0] != "\u{25cc}" # ensures the column is not already full
      return "error_fullcolumn"
    else
      return "valid"
    end
  end

  def take_turn
    @board.display_board # display current board state    
    if @turns.even?
      puts "Please select a column by entering its number."
      while user_input = gets.chomp # input loop for player column selection
        if valid_input(user_input) == "error_nocolumn"
          puts "Error: Selected column does not exist. Please select a valid column."
        elsif valid_input(user_input) == "error_fullcolumn"
          puts "Error: Column is already full. Please select a valid column."
        else
          @board.play_piece(user_input.to_i, player_one.human?) # plays the piece, and breaks the loop
          break
        end
      end
    else
      computer_input = rand(1..@board.columns)
      while valid_input(computer_input) != "valid"
        computer_input = rand(1..@board.columns)
      end
      puts "Computer is thinking..."
      sleep(2)
      @board.play_piece(computer_input.to_i, player_two.human?)
      puts "Computer placed piece in column #{computer_input}."
    end
    if @board.check_for_win == true
      if @turns.even?
        puts "Player wins!"
      else
        puts "Computer wins :("
      end
      end_game
    else
      @turns += 1
      take_turn
    end
  end
  
  def end_game
    puts "7H4NK5 4 P74Y1N6!"
    # exit
  end
end

  # def take_turn
  #   @board.display_board # display current board state
    
  #   if @turns.even?
  #   puts "Please select a column by entering its number."
  #   while user_input = gets.chomp # input loop for player column selection
  #     if user_input.to_i < 1 || user_input.to_i > @board.columns # ensures the input matches one of the columns
  #       puts "Error: Selected column does not exist."
  #     elsif @board.board_matrix.column(user_input.to_i - 1)[0] != "\u{25cc}" # ensures the column is not already full
  #       puts "Error: Column is already full."
  #     else
  #       @board.play_piece(user_input.to_i) # plays the piece, and breaks the loop
  #       # require 'pry'; binding.pry
  #       break
  #     end
  #     # case user_input ### why does this when block not issue full column errors, but the if version does?
  #     # when user_input.to_i < 1 || user_input.to_i > @board.columns
  #     #   puts "Error: Selected column does not exist."
  #     # when @board.board_matrix.column(user_input.to_i - 1)[0] != "\u{25cc}"
  #     #   puts "Error: Column is already full."
  #     # else
  #     #   @board.play_piece(user_input.to_i)
  #     #   require 'pry'; binding.pry
  #     #   break
  #     # end
  #   end
  #   if @board.check_for_win == true
  #     end_game
  #   else
  #     take_turn # advances to the next turn
  #   end
  # end