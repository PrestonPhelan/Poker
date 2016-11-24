class Player
  attr_accessor :name

  def initialize(name = "Bot")
    @name = name
  end

  def get_move

    pos = gets.chomp.split(',').map(&:to_i)
  end   



end
