require 'player'


describe Player do
  subject(:gambler) { Player.new("Texas", 100) }


  describe '#initialize' do

    it 'sets name instance variable' do
      expect(gambler.name).to eq("Texas")
    end

    it 'sets bank value' do
      expect(gambler.funds).to eq(100)
    end

    it 'sets hand'
  end

  describe '#place_bet' do

    it 'subtracts amount from funds' do
      gambler.place_bet(10)
      expect(gambler.funds).to eql(90)
    end

    it 'returns bet amount' do
      expect(gambler.place_bet(10)).to eql(10)
    end

    it 'rasies error if insufficient funds' do
      expect {gambler.place_bet(1000)}.to raise_error
    end
  end

  describe '#fold' do

    before(:each) { gambler.fold }
    it 'changes the fold instance variable to true' do
      expect(gambler.folded).to be true
    end
  end

  describe '#discard' do

    let(:to_discard) { [:card1, :card2]}
    let(:hand1) { double("hand") }

    it 'passes array of cards to hand.discard(card) method' do
      gambler.hand = hand1
      expect(hand1).to receive(:discard).with(to_discard)
      gambler.discard(to_discard)
    end
  end

  # describe '#make_move'
  #
  #   it 'allows player to see'
  # end


end

#methods
# place_bet(money)
# fold
# discard(*cards)

# make_move (includes, fold, raise)
# raise
