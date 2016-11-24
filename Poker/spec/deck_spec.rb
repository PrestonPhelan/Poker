require 'deck'

describe Deck do
  subject { Deck.new }

  describe '#initialize' do
    it "creates an instance of the Deck class" do
      expect(subject).to be_an_instance_of(Deck)
    end

    it "sets an instance variable deck as an array" do
      expect(subject.deck).to be_a(Array)
    end

    it 'creates default deck, if no deck is passed' do
      expect(subject.deck.length).to eq(Deck.populate.length)
    end
  end

  describe '.populate' do
    it 'returns an array' do
      expect(Deck.populate).to be_a(Array)
    end

    it 'returns and array of card objects' do
      Deck.populate.all?{ |el| expect(el).to be_an_instance_of(Card) }
    end

    it 'contains 52 cards' do
      expect(Deck.populate.length).to eql(52)
    end

    it 'contains no duplicates' do
      new_deck = Deck.populate
      new_deck.each_with_index do |card, idx|
        new_deck[idx + 1..-1].each_with_index do |other, idx2|
          expect(card.suit == other.suit && card.value == other.value).to be false
        end
      end
    end

  end

  describe '#shuffle' do

    it 'shuffles cards' do
      expect(subject.deck.shuffle).not_to eql(subject.deck)
    end
  end

  describe '#remove(card)' do
    let(:jack_of_spades) { double('card', :suit => :spade, :value => :J) }

    it "removes card from deck" do
      subject.remove(jack_of_spades)

      expect(subject.deck).not_to include(jack_of_spades)
    end
  end
end
