class Player

  # (piece type handled by board?)

  attr_reader :human

  def initialize
    @human = true
  end

  def make_computer
    @human = false
  end

  def human?
    @human
  end
end
  
    # def take_turn
    #   if @human
    #     player_input(column_selection)
    #   else
    #     play_random_piece
    #   end
    # end
  
    # def player_input(column_selection)
    #   puts "Enter the column number to place your piece:"
    #   column_selection = gets.chomp.to_i
    #   if valid_move?(column_selection)
    #     @play_piece(column_selection)
    #   else
    #     p "Error: Invalid column selection"
    #   end
    # end
    
    # #I think it allows us to loop random numbers
    # def play_random_piece(column_selection)
    #   column_selection = rand(1..6)
    #   column_selection = gets.chomp.to_i
    #     if valid_move?(column_selection)
    #       @play_piece(column_selection)
    #     else
    #       false #loops back???? or play_random_piece?
    #     end
    # end

    # def valid_move?
    #   if column_selection < 1 || column_selection > @columns
    #     false
    #   elsif @board_matrix.column(column_selection - 1)[0] != "\u{25cc}"
    #     false
    #   else
    #     true # true here because it would have played a piece next
    #   end
    
    # end