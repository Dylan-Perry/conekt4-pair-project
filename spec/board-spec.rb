require './spec/spec-runner'

RSpec.describe Board do

  it 'exists' do
    default = Board.new(6, 7)
    
    expect(default).to be_an_instance_of(Board)
  end
  
  it 'creates a board with x rows and y columns' do
    default = Board.new(6, 7)
    
    expect(default.rows).to eq(6)
    expect(default.columns).to eq(7)
  end
  
  it 'returns the correct column index' do
    default = Board.new(6, 7)

    expect(default.column_to_index("C")).to eq(0)
    expect(default.column_to_index("O")).to eq(1)
    expect(default.column_to_index("N")).to eq(2)
    expect(default.column_to_index("E")).to eq(3)
    expect(default.column_to_index("K")).to eq(4)
    expect(default.column_to_index("T")).to eq(5)
    expect(default.column_to_index("4")).to eq(6)
    expect(default.column_to_index("4!")).to eq(6)
  end

end