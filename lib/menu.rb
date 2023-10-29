class Menu
  #attr_reader :

  def initialize
  end

  def display_welcome_message
    puts "Connect four in a row to win!"
  end

  def display_character_selection
    puts "Enter number"
    puts "1 = Human v Human"
    puts "2 = Human v CPU"
    puts "3 = CPU v CPU"
    puts "4 = Run away Scaredy Cat"
  end



end