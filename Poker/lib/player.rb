require_relative 'hand'


class Player
  attr_accessor :name, :funds, :folded, :hand

  def initialize(name, funds = 100, folded = false)
    @name, @funds, @folded = name, funds, folded
    @hand = Hand.new
  end

  def place_bet(amount)
    raise if amount > funds
    @funds -= amount
    amount
  end

  def fold
    @folded = true
  end

  def discard(*cards)
    @hand.discard(*cards)
  end

end
