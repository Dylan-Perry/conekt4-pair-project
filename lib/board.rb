require "Matrix"

class Board
  attr_accessor :board_matrix
  attr_reader :rows, :columns

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @board_matrix = Matrix.build(rows, columns) {|cell| "\u{25cc}"}
  end
  
  def display_board
    # Build and print header array for selecting a column
    selection_array = ["1", "2", "3", "4", "5", "6", "7"]
    selection_array.each do |symbol|
      print "|" + symbol
    end
    print "|\n"

    # Print each cell on the board, iterating by row, then by column
    @rows.times do |row| 
      @columns.times do |column|
        print "|" + @board_matrix[row, column]
      end
      print "|\n"
    end
    return
  end

  # Currently only places "X" pieces; will add additional piece variants alongside player class
  def play_piece(column_selection)
    if column_selection < 1 || column_selection > @columns
      "Error: Selected column does not exist."
    elsif @board_matrix.column(column_selection - 1)[0] != "\u{25cc}"
      "Error: Column is already full."
    else
      column_index = 0
      @board_matrix.column(column_selection - 1).each do |cell|
        if cell == "\u{25cc}" && column_index < @rows
          column_index += 1
        end
      end
      @board_matrix[column_index - 1, column_selection - 1] = "X"
      @played_piece = [column_index - 1, column_selection - 1] # Assigning last played piece coords to variable for check_for_win
    end
  end

  def check_for_win
    # Use the row coordinates from @played_piece to identify row, then convert row to array, then check array with each_cons
    @board_matrix.row(@played_piece[0]).to_a.each_cons(4) do |cells| 
      if cells == ["X", "X", "X", "X"]
        display_board
        puts "Winner Horizontal"
        return true
      end
    end
    # Use the column coordinates from @played_piece to identify column, then convert column to array, then check array with each_cons
    @board_matrix.column(@played_piece[1]).to_a.each_cons(4) do |cells|
      if cells == ["X", "X", "X", "X"]
        display_board
        puts "Winner Vertical"
        return true
      end
    end
    # Use the coordinates from @played_piece for start point, then check +/- 3 cells from center diagonally up left
    diagonal_array_up_left = [
      @board_matrix[@played_piece[0]-3,@played_piece[1]-3],
      @board_matrix[@played_piece[0]-2,@played_piece[1]-2],
      @board_matrix[@played_piece[0]-1,@played_piece[1]-1],
      @board_matrix[@played_piece[0],@played_piece[1]],
      @board_matrix[@played_piece[0]+1,@played_piece[1]+1],
      @board_matrix[@played_piece[0]+2,@played_piece[1]+2],
      @board_matrix[@played_piece[0]+3,@played_piece[1]+3],
    ]
    diagonal_array_up_left.each_cons(4) do |cells|
      if cells == ["X", "X", "X", "X"]
        display_board
        puts "Winner Diagonal Up Left"
        return true
      end
    end
    # Use the coordinates from @played_piece for start point, then check +/- 3 cells from center diagonally up right
    diagonal_array_up_right = [
      @board_matrix[@played_piece[0]-3,@played_piece[1]+3],
      @board_matrix[@played_piece[0]-2,@played_piece[1]+2],
      @board_matrix[@played_piece[0]-1,@played_piece[1]+1],
      @board_matrix[@played_piece[0],@played_piece[1]],
      @board_matrix[@played_piece[0]+1,@played_piece[1]-1],
      @board_matrix[@played_piece[0]+2,@played_piece[1]-2],
      @board_matrix[@played_piece[0]+3,@played_piece[1]-3],
    ]
    diagonal_array_up_right.each_cons(4) do |cells|
      if cells == ["X", "X", "X", "X"]
        display_board
        puts "Winner Diagonal Up Right"
        return true
      end
    end
  end
end
