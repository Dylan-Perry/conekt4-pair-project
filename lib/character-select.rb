class CharacterSelect
  attr_reader :name, :piece

  def initialize(name, piece)
    @players = []
    @default_human = "\u{1F640}" #scared-cat
    @secondary_human = "\u{1F3C3}" #jack-o-lantern
    @default_cpu = "\u{1F3C3}" #jack-o-lantern / #random
    @jigsaw_cpu = "\u{2699}" #gear / #always block
    @jason_cpu = "\u{1F52A}" #kitchen-knife" / #always win

  end


end

class CPU
  attr_reader :name, :piece

  def initialize(name, piece)
    @name = name
    @piece = piece
  end

end