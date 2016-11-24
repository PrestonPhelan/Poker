require_relative 'deck'

class Hand
  attr_accessor :cards #, :rank

  def initialize(cards = [])
    @cards = cards
  end

  def add(card)
    @cards << card
  end

  def discard(card)
    @cards.delete_if { |object| object == card }
  end

  def clear
    @cards = []
  end
end
