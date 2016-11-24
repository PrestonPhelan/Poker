require 'player'

describe Player do
  subject(:player) { Player.new }
  let(:game) { double('towers', :valid_move? => true ) }

  describe 'initialize' do
    it 'sets player name to default' do
      expect(player.name).to eql("Bot")
    end
  end

  describe 'get_move' do

    it "should return an array" do
      expect(player.get_move).to be_a(Array)
    end

    it 'should contain integers' do
      player.get_move.each { |el| expect(el).to be_a(Integer) }
    end

    it 'should have different start and end positions' do
      move = player.get_move
      expect(move[0] == move[1]).to be false
    end
  end

  # it 'calls towers#valid_move' do
  #   expect(:game).to receieve(:valid_move?)
  #   expect(player.get_move).to send(get_move)
  # end
end
