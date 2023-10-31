require './spec/spec-runner'
require "matrix"

RSpec.describe Board do

  it 'exists' do
    conekt4_board = Board.new(6, 7)

    expect(conekt4_board).to be_a Board
    expect(conekt4_board.board_matrix).to be_a Matrix
    expect(conekt4_board.board_matrix.column(0)).to eq(Vector["◌", "◌", "◌", "◌", "◌", "◌"])
    expect(conekt4_board.board_matrix.row(0)).to eq(Vector["◌", "◌", "◌", "◌", "◌", "◌", "◌"])
  end

  describe "#display_board" do
    conekt4_board = Board.new(6, 7)

    it "displays an empty board, with column selection header row" do
      expect{puts conekt4_board.board_matrix}.to output("Matrix[[◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌]]\n").to_stdout
    end
  end

  describe "#play_piece" do
    conekt4_board = Board.new(6, 7)

    it "stacks pieces in a column until column is full, then prints an error message when selecting full column" do
      expect(conekt4_board.board_matrix.column(2)).to eq(Vector["◌", "◌", "◌", "◌", "◌", "◌"])
      
      conekt4_board.play_piece(3)
      conekt4_board.play_piece(3)
      conekt4_board.play_piece(3)
      conekt4_board.play_piece(3)
      conekt4_board.play_piece(3)
      conekt4_board.play_piece(3)

      expect(conekt4_board.board_matrix.column(2)).to eq(Vector["X", "X", "X", "X", "X", "X"])
      expect(conekt4_board.play_piece(3)).to eq("Error: Column is already full.")
    end

    it "errors out when playing a piece in a non-existent column" do
      expect(conekt4_board.play_piece(0)).to eq("Error: Selected column does not exist.")
      expect(conekt4_board.play_piece(8)).to eq("Error: Selected column does not exist.")
    end
  end
end
