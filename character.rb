class Character
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end
end
