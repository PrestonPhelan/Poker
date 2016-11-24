require 'hand'

describe Hand do
  subject { Hand.new }
  let(:full_hand) { Hand.new([:card1, :card2, :card3, :card4, :card5]) }


  describe '#initialize' do

    it 'creates an instance of Hand class' do
      expect(subject).to be_an_instance_of(Hand)
    end

    it 'sets and instance variable cards' do
      expect(subject.cards).to be_a(Array)
    end

    it 'has an empty default card set' do
      expect(subject.cards). to eql([])
    end

  end


  describe '#add(card)' do
    let(:card) { double("card") }

    it 'adds a card to the hand' do
      subject.add(card)
      expect(subject.cards).to include(card)
    end
  end

  describe '#discard(card)' do
    it 'discards a card' do
      full_hand.discard(:card2)
      expect(full_hand.cards).to eql([:card1, :card3, :card4, :card5])
    end

    it 'takes more than one card'
  end

  describe '#clear' do

    it 'resets instance variable cards to empty' do
      full_hand.clear
      expect(full_hand.cards).to be_empty
    end

  end


end
