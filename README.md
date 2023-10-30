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