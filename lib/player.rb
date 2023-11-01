class Player

# (piece type handled by board?)

  def initialize(human = true)
    @human = human
  end

  def take_turn
    if @human
      player_input(column_selection)
    else
      play_random_piece
    end
  end

  def player_input(column_selection)
    puts "Enter the column number to place your piece:"
    column_selection = gets.chomp.to_i
    if valid_move?(column_selection)
      @play_piece(column_selection)
    else
      p "Error: Invalid column selection"
    end
  end
  
  #I think it allows us to loop random numbers
  def play_random_piece(column_selection)
    column_selection = rand(1..6)
    column_selection = gets.chomp.to_i
      if valid_move?(column_selection)
        @play_piece(column_selection)
      else
        false #loops back???? or play_random_piece?
      end
  end
  
  end