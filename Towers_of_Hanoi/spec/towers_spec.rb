require "towers"

describe Towers do
  subject(:game) { Towers.new(3) }
  let(:tower2) { Towers.new(3) }#:towers => [[3, 2], [1], []] }


  describe '#initialize' do

    it 'sets up array of arrays' do
      expect(game.towers).to be_a(Array)
      game.towers.all? { |tower| expect(tower).to be_a(Array)}
    end

    it 'sets up three towers' do
      expect(game.towers.length).to eql(3)
    end

    it 'puts disks on first tower' do
      expect(game.towers.first).to eq( [3, 2, 1] )
    end

  end


  describe '#move' do
    # it 'calls valid_move?' do
    #   expect(game).to receive(:valid_move?).with([0, 2])
    #   game.move(0, 2)
    # end

    it 'raises error if move is invalid' do
      allow(game).to receive(:valid_move?).and_return(false)
      expect { game.move }.to raise_error
    end

    it 'updates towers with correct move' do
      start_pos = 0
      end_pos = 2

      game.move(start_pos, end_pos)

      expect(game.towers).to eq( [ [3, 2], [], [1]])
    end

    it 'checks if game is won after each move' do
      expect(game).to receive(:won?)
      game.move(0, 2)
    end

  end

  describe '#valid_move?' do

    before(:each) { tower2.towers = [[3, 2], [1], []] }
    context 'returns false if move is invalid' do
      it 'returns false if move is out of range' do
        move = [-5, 8]
        expect(game.valid_move?(move)).to be false
      end

      it 'returns false if end pos has smaller disc' do
        expect(tower2.valid_move?([0, 1])).to be false
      end

      it 'returns false if start tower has no discs' do
        expect(tower2.valid_move?([2, 1])).to be false
      end
    end

    it 'returns true if move is valid' do
      expect(game.valid_move?([0, 1])).to be true
    end

  end

  describe '#won?' do

    it 'checks to see game is won' do
      game.towers[0] = []
      game.towers[1] = []
      game.towers[2] = [3, 2, 1]
      expect(game.won?).to be true
    end

    it 'returns false if game is not won' do
      expect(game.won?).to be false
    end

  end

end
