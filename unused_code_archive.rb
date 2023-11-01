# conekt4-pair-project

# Pulled all stretch goals notes here for now

# ******** From board.rb ********
# Menu item
# def decide_piece
#   default_player.piece = "\u{1F640}"#scared-cat
#   default_cpu.piece = "\u{1F3C3}"#jack-o-lantern
# end

# Different valid column words
#     # if @board(column).select = ["C.", "O.", "N.", "E.", "K.", "T.", "4!"]
#     # if @board(column).select = ["W., E., L., C., O., M., 3!"]
#     # else
#     #   puts "The Rules Of Our Game Have Been Made Very Clear. You Need To Abide By Those Rules."

# Different board display  
# def display_board  #(0, 0)accumulator zeros to make it variable? default board (7,6)?
#     # if greater than seven rows iterate unique emojis unicode? 
#     # but how would you select the emojis w/o requireing dang near hexidecimals??
#     # unique columns (for player/cpu choice) require letters, but thats no flavor...
#     # else # not default (stretch goal)
#     # puts "~~~~~~~~~~~~~~"
#     # puts "W.E.L.C.O.M.3!".red
#     # puts "~~~~~~~~~~~~~~"
#     @board.each do |rows|
#       # else #x eyes face
#       # puts "\u{1F635}" "\u{1F635}" "\u{1F635}" "\u{1F635}" "\u{1F635}" "\u{1F635}" "\u{1F635}"
#     end

# Different player pieces
# if player_1 = "\u{F3C3}"#running-person <-male/female/non/??
#     cpu_jigsaw = "\u{2699}"#gear
#     cpu_jason = "\u{1F52A}"#kitchen-knife"

#   #Module to choose different pieces and menu responses?
#   #Default is all generic and safe and pc, then make a selection and it goes full saw-mode :)
  
# ruby gem colorize didnt work but this does
# class String
#   # colorization
#   def colorize(color_code)
#     "\e[#{color_code}m#{self}\e[0m"
#   end

#   def red
#     colorize(31)
#   end
# end

# *******From Board-spec*******
# Additional 'quote notes' for main branch upon pull and agreement

# Would RandomBoard this need a seperate class? Or can you randomize the initialize method chosen??

# it 'exists' do #would work as character-select? drop-down menu?
#   random_board = Board.new(random_columns, random_rows)

#   expect(random_game).to be_an_instance_of(Board) #(RandomBoard?)
# end
# *****************************

# archived non-matrix methods for Turn class

# <!-- class Turn
#   attr_reader :board

#   def initialize(board)
#     @board = board
#   end

#   #allows to enter letter instead of choosing index starting with zero
#   def column_to_index(column_label)
#     column_converter = {
#       "C" => 0,
#       "O" => 1,
#       "N" => 2,
#       "E" => 3,
#       "K" => 4,
#       "T" => 5,
#       "4" => 6, 
#     }
#     column_converter[column_label]
#   end

#   # changing a Matrix: https://www.ruby-forum.com/t/matrix-class-how-to-set-a-single-element/145002
#   # TLDR need to convert to 2d array, change it, then convert back to matrix??
#   def drop_piece(column_label, piece)
#     column = column_to_index(column_label)
#     return "Invalid column selection" if column.nil?
#       # convert to array
#     board_matrix = @board.board_matrix.to_a
#     row = board_matrix.rindex { |row| row[column] == "\u{25cc}" }
#     if row
#       @board.change_board(row, column, piece)
#       # put all this into seperate method in board so we can call it
#       # board_matrix[row][column] = piece
#       # reconverts to matrix / fails due to scope, which requires change_board method
#       # @board.board_matrix = Matrix.rows(board_matrix)
#     else
#       return "Invalid: column full"
#     end
#   end
# end -->

### Turn spec tests

# require './lib/turn'
# require './lib/board'

# RSpec.describe Turn do
  
#   before :each do
#     @board = Board.new(6, 7)
#     @turn = Turn.new(@board)
#   end
  
#   it 'returns the correct column index' do
#     expect(@turn.column_to_index("C")).to eq(0)
#     expect(@turn.column_to_index("O")).to eq(1)
#     expect(@turn.column_to_index("N")).to eq(2)
#     expect(@turn.column_to_index("E")).to eq(3)
#     expect(@turn.column_to_index("K")).to eq(4)
#     expect(@turn.column_to_index("T")).to eq(5)
#     expect(@turn.column_to_index("4")).to eq(6)
#   end

#   it 'chooses invalid column label' do
#     expect(@turn.drop_piece("A", "\u{1F640}")).to eq("Invalid column selection")    
#   end

#   it 'makes valid move and drops a piece' do 
#     @turn.drop_piece("C", "\u{1F640}")

#     expect(@board.board_matrix[5, 0]).to eq("\u{1F640}")
#   end

#   it 'chooses full column' do
#     @turn.drop_piece("C", "\u{1F640}")
#     @turn.drop_piece("C", "\u{1F640}")
#     @turn.drop_piece("C", "\u{1F640}")
#     @turn.drop_piece("C", "\u{1F3C3}")
#     @turn.drop_piece("C", "\u{1F3C3}")
#     @turn.drop_piece("C", "\u{1F3C3}")

#     expect(@turn.drop_piece("C", "\u{1F640}")).to eq("Invalid: column full")
#   end

# end

# attr_reader :name, :piece

  

#   def initialize(name, piece)
#     @players = []
#     @default_human = "\u{1F640}" #scared-cat
#     @secondary_human = "\u{1F3C3}" #jack-o-lantern
#     @default_cpu = "\u{1F3C3}" #jack-o-lantern / #random
#     @jigsaw_cpu = "\u{2699}" #gear / #always block
#     @jason_cpu = "\u{1F52A}" #kitchen-knife" / #always win

#   end


# end

# class CPU
#   attr_reader :name, :piece

#   def initialize(name, piece)
#     @name = name
#     @piece = piece
#   end