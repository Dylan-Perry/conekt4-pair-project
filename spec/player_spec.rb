RSpec.describe Player do

  it 'exists' do
    default = Player.new

    expect(default).to be_an_instance_of(CharacterSelect)
  end

  it 'displays a welcome message' do


    expect(default.display_welcome_message).to eq("Connect four in a row to win!")
  end

  
end