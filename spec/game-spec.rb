require "./spec/spec-runner"

RSpec.describe Game do

  it 'exists' do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

  # it 'displays welcome message' do
  #   expect(game.display_welcome_message).to eq("Welcom3 to Conekt4!").and eq("Connect four pieces in a row to win!")
  # end
    
  # it 'displays player selection' do
  #   expect(@new_game.display_player_selection).to eq("Choose wisely...").and eq("1 = Human v CPU").and eq("2 = Run away scaredy cat!")
  # end

  # it 'displays the game board' do
  #   expect(@new_game.start_game).to be_an_instance_of(Board)
  # end
  
  # it 'uses inputs for player selection' do
  #   expect(input == 1).to be_an_instance_of(start_game)
  #   expect(input == 2).to be_an_instance_of(abort)
  #   expect(input != 1 || input != 2).to be_an_instance_of(display_player_selection)
  # end


end