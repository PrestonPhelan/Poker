require 'card'

class Deck
  attr_accessor :deck

  SUITS = { spade: "\u2660".encode('utf-8'),
            diamond: "\u2666".encode('utf-8'),
            heart: "\u2665".encode('utf-8'),
            club: "\u2663".encode('utf-8') }.freeze

  VALUES = { Two: 2,
             Three: 3,
             Four: 4,
             Five: 5,
             Six: 6,
             Seven: 7,
             Eight: 8,
             Nine: 9,
             Ten: 10,
             Jack: 11,
             Queen: 12,
             King: 13,
             Ace: 14 }.freeze

  def self.populate
    deck = []

    SUITS.each do |suit, _|
      VALUES.each do |value, _|
        deck << Card.new(suit, value)
      end
    end

    deck
  end

  def initialize(deck = Deck.populate)
    @deck = deck
  end

  def remove(card = nil)

    if card
      deck.delete_if { |object| object == card }
    else
      @deck.pop
    end

  end
end
