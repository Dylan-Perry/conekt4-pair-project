class Turn
  attr_reader :board

  def initialize(board)
    @board = board
  end

  #allows to enter letter instead of choosing index starting with zero
  def column_to_index(column_label)
    column_converter = {
      "C" => 0,
      "O" => 1,
      "N" => 2,
      "E" => 3,
      "K" => 4,
      "T" => 5,
      "4" => 6, 
    }
    column_converter[column_label]
  end

  # changing a Matrix: https://www.ruby-forum.com/t/matrix-class-how-to-set-a-single-element/145002
  # TLDR need to convert to 2d array, change it, then convert back to matrix??
  def drop_piece(column_label, piece)
    column = column_to_index(column_label)
    return "Invalid column selection" if column.nil?
      # convert to array
    board_matrix = @board.board_matrix.to_a
    row = board_matrix.rindex { |row| row[column] == "\u{25cc}" }
    if row
      @board.change_board(row, column, piece)
      # put all this into seperate method in board so we can call it
      # board_matrix[row][column] = piece
      # reconverts to matrix / fails due to scope, which requires change_board method
      # @board.board_matrix = Matrix.rows(board_matrix)
    else
      return "Invalid: column full"
    end
  end
end