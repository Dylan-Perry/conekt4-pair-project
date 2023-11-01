require './spec/spec-runner'
require "matrix"

RSpec.describe Board do

  it 'exists' do
    board = Board.new(6, 7)

    expect(board).to be_a Board
    expect(board.board_matrix).to be_a Matrix
    expect(board.board_matrix.column(0)).to eq(Vector["◌", "◌", "◌", "◌", "◌", "◌"])
    expect(board.board_matrix.row(0)).to eq(Vector["◌", "◌", "◌", "◌", "◌", "◌", "◌"])
  end

  describe "#display_board" do
    board = Board.new(6, 7)

    it "displays an empty board, with column selection header row" do
      expect{puts board.board_matrix}.to output("Matrix[[◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌], [◌, ◌, ◌, ◌, ◌, ◌, ◌]]\n").to_stdout
    end
  end

  describe "#play_piece" do
    board = Board.new(6, 7)

    it "stacks pieces in a column until column is full, then prints an error message when selecting full column" do
      expect(board.board_matrix.column(2)).to eq(Vector["◌", "◌", "◌", "◌", "◌", "◌"])
      
      board.play_piece(3,true)
      board.play_piece(3,true)
      board.play_piece(3,true)
      board.play_piece(3,true)
      board.play_piece(3,true)
      board.play_piece(3,true)

      expect(board.board_matrix.column(2)).to eq(Vector["X", "X", "X", "X", "X", "X"])
      expect(board.play_piece(3,true)).to eq("Error: Column is already full.")
    end
    

    it "errors out when playing a piece in a non-existent column" do
      expect(board.play_piece(0,true)).to eq("Error: Selected column does not exist.")
      expect(board.play_piece(8,true)).to eq("Error: Selected column does not exist.")
    end
  end
end
