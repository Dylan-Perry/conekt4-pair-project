require './lib/turn'
require './lib/board'

RSpec.describe Turn do
  
  before :each do
    @board = Board.new(6, 7)
    @turn = Turn.new(@board)
  end
  
  it 'returns the correct column index' do
    expect(@turn.column_to_index("C")).to eq(0)
    expect(@turn.column_to_index("O")).to eq(1)
    expect(@turn.column_to_index("N")).to eq(2)
    expect(@turn.column_to_index("E")).to eq(3)
    expect(@turn.column_to_index("K")).to eq(4)
    expect(@turn.column_to_index("T")).to eq(5)
    expect(@turn.column_to_index("4")).to eq(6)
  end

  it 'chooses invalid column label' do
    expect(@turn.drop_piece("A", "\u{1F640}")).to eq("Invalid column selection")    
  end

  it 'makes valid move and drops a piece' do 
    @turn.drop_piece("C", "\u{1F640}")

    expect(@board.board_matrix[5, 0]).to eq("\u{1F640}")
  end

  it 'chooses full column' do
    @turn.drop_piece("C", "\u{1F640}")
    @turn.drop_piece("C", "\u{1F640}")
    @turn.drop_piece("C", "\u{1F640}")
    @turn.drop_piece("C", "\u{1F3C3}")
    @turn.drop_piece("C", "\u{1F3C3}")
    @turn.drop_piece("C", "\u{1F3C3}")

    expect(@turn.drop_piece("C", "\u{1F640}")).to eq("Invalid: column full")
  end

end