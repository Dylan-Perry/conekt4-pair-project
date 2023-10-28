require './spec/spec-runner'

RSpec.describe Board do

  it 'exists' do
    default = Board.new(7, 6)

    expect(default).to be_an_instance_of(Board)
  end

  # Would RandomBoard this need a seperate class? Or can you randomize the initialize method chosen??
  # it 'exists' do #would work as character-select? drop-down menu?
  #   random_board = Board.new(random_columns, random_rows)

  #   expect(random_game).to be_an_instance_of(Board) #(RandomBoard?)
  # end

end

#Additional 'quote notes' for main branch upon pull and agreement
