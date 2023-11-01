require "./spec/spec-runner"

RSpec.describe Player do

  it 'exists' do
    player = Player.new
    
    expect(player).to be_an_instance_of(Player)
  end
  
  it 'creates a human player by default' do
    player = Player.new

    expect(player.human?).to be true
  end
  
  it 'switches the player to a computer' do
    player = Player.new
    player.make_computer
    
    expect(player.human?).to be false
  end

end