class Board

  attr_reader :rows, :columns
  attr_accessor :board
  
  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @board = Array.new(rows) { Array.new(columns) }
  end
  
  def display_board
    puts "________________"
    puts "|C O N E K T 4!|"
    @board.each do |row|
      puts "|\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}|"
    end
    puts "----------------"
  end
  
  def column_to_index(column_label)
    column_converter = {
      "C" => 0,
      "O" => 1,
      "N" => 2,
      "E" => 3,
      "K" => 4,
      "T" => 5,
      "4" => 6, 
      "4!" => 6
    }
    column_converter[column_label]
  end
end

default = Board.new(6, 7)
default.display_board

# Move this to Turn??
#   def drop_piece(column_label, piece)
#     column = column_to_index(column_label)
#     return false if column.nil? || column < 0 || column >= @columns
#     puts "Please select a valid column."
    
#     row = @rows - 1
#     while row >= 0
#       if @board[row][column] == ' '
#         @board[row][column] = piece
#         return true
#       end
#       row -= 1
#     end
#     false 
#   end
