require 'card'

describe Card do
  subject(:card) { Card.new(:spade, :K) }

  describe '#initialize' do

    it 'creates and object of Card class' do
      expect(card).to be_an_instance_of(Card)
    end

    it 'has a suit' do
      Card.instance_variable_set(:@suit, :spade)
      expect(card.suit).to be(:spade)
    end

    it 'has a value' do
      Card.instance_variable_set(:@value, :K)
      expect(card.value).to be(:K)
    end

    it '#suit' do
      ivar = Card.instance_variable_get(:@suit)
      expect(suit).to be(ivar)
    end

    it '#value' do
      ivar = Card.instance_variable_get(:@value)
      expect(value).to be(ivar)
    end

  end

end
