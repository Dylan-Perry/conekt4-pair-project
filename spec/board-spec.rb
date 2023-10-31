require './spec/spec-runner'

RSpec.describe Board do

  it 'exists' do
    conekt4_board = Board.new(6, 7)

    expect(conekt4_board).to be_a Board
    expect(conekt4_board.board_matrix).to be_a Matrix
    expect(conekt4_board.column(0)).to eq(Vector["◌", "◌", "◌", "◌", "◌", "◌"])
    expect(conekt4_board.row(0)).to eq(Vector["◌", "◌", "◌", "◌", "◌", "◌", "◌"])
  end

  describe "#display_board" do
    before :each do
      conekt4_board = Board.new(6, 7)
    end

    it "displays an empty board, with column selection header row" do
      expect{puts board.board_matrix}.to output("Matrix[[◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌]]").to_stdout
    end
  end

  # Would RandomBoard this need a seperate class? Or can you randomize the initialize method chosen??
  # it 'exists' do #would work as character-select? drop-down menu?
  #   random_board = Board.new(random_columns, random_rows)

  #   expect(random_game).to be_an_instance_of(Board) #(RandomBoard?)
  # end

end

#Additional 'quote notes' for main branch upon pull and agreement
