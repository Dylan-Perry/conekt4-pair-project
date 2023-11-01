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

  # Need to be boolean, without individual error messages
  def valid_move?
  if column_selection < 1 || column_selection > @columns
    false
  elsif @board_matrix.column(column_selection - 1)[0] != "\u{25cc}"
    false
  else
    true # true here because it would have played a piece next
  end

  def play_piece(column_selection)
    column_index = 0
    @board_matrix.column(column_selection - 1).each do |cell|
      if cell == "\u{25cc}" && column_index < @rows
        column_index += 1
      end
    end
    @board_matrix[column_index - 1, column_selection - 1] = "X"
  end

end

