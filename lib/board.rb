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
      check_for_win # Run check_for_win method
    end
  end

  def check_for_win
    # Use the row coordinates from @played_piece to identify row, then convert row to array, then check array with each_cons
    @board_matrix.row(@played_piece[0]).to_a.each_cons(4) do |cells| 
      if cells == ["X", "X", "X", "X"]
        puts "Winner"
      end
    end
    # Use the column coordinates from @played_piece to identify column, then convert column to array, then check array with each_cons
    @board_matrix.column(@played_piece[1]).to_a.each_cons(4) do |cells|
      if cells == ["X", "X", "X", "X"]
        puts "Winner"
      end
    end
  end
end

# def change_board(row, column, piece)
#   board_matrix = @board_matrix.to_a
#   board_matrix[row][column] = piece
#   @board_matrix = Matrix.rows(board_matrix)
# end

# class Matrix

#   attr_reader :columns, :rows
#   attr_accessor :image
  
#   def initialize(columns, rows)
#     @columns = columns
#     @rows = rows
#     @image = Array.new(rows) { Array.new(columns, ' ') }
#   end
  
#   def display
#     puts "|C.O.N.E.K.T.4!|"
#     @image.each do |rows|
#       puts "|\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}|"
#     end
#   end
# end

##prints as board, but no matrix and stretch goals notes
# class Board
#   attr_reader :columns, :rows

#   def initialize(columns, rows)
#     @columns = columns
#     @rows = rows
#     @board = Array.new(rows) {Array.new(columns, ' ')}
#   end

#   def display_board  #(0, 0)accumulator zeros to make it variable? default board (7,6)?
#     # if greater than seven rows iterate unique emojis unicode? 
#     # but how would you select the emojis w/o requireing dang near hexidecimals??
#     # unique columns (for player/cpu choice) require letters, but thats no flavor...
#     # if default
#     puts "|C.O.N.E.K.T.4!|"
#     puts "----------------"
#     # else #other than player defaults chosen
#     # puts "~~~~~~~~~~~~~~~"
#     # puts "W.E.L.C.O.M.3!".red
#     # puts "~~~~~~~~~~~~~~~"
#     @board.each do |rows|
#       # if default #white circle emojis
#       puts "|\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}" "\u{26AA}|"
#       # else #x eyes face
#       # puts "\u{1F635}" "\u{1F635}" "\u{1F635}" "\u{1F635}" "\u{1F635}" "\u{1F635}" "\u{1F635}"
#     end
# puts "----------------"
#   end 
  
#   #Module to choose different pieces and menu responses?
#   #Default is all generic and safe and pc, then make a selection and it goes full saw-mode :)
  
#   # def decide_piece
#   #  if default_player = "\u{1F640}"#scared-cat
#   #  if default_cpu = "\u{1F3C3}"#jack-o-lantern
#   #  if player_1 = "\u{F3C3}"#running-person <-male/female/non/??
#   #       cpu_jigsaw = "\u{2699}"#gear
#   #       cpu_jason = "\u{1F52A}"#kitchen-knife"
#   # end

#   # def drop_piece(column)
#     # if @board(column).select = ["C.", "O.", "N.", "E.", "K.", "T.", "4!"]
#     #   then drop down the row??
#     # else
#     #   puts "Please select a valid column."
#     # if @board(column).select = ["W., E., L., C., O., M., 3!"]
#     # else
#     #   puts "The Rules Of Our Game Have Been Made Very Clear. You Need To Abide By Those Rules."
#   # end

# end

# class String ##ruby gem colorize didnt work but this does
#   # colorization
#   def colorize(color_code)
#     "\e[#{color_code}m#{self}\e[0m"
#   end

#   def red
#     colorize(31)
#   end
# end

# default = Board.new(7, 6)
# default.display_board