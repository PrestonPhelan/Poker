require 'game'

describe Game do

  subject(:game) { Game.new(["Joe", 888], ["Kate", 6300], ["Fluffy", 55]) }

  describe '#initialize' do

    it 'creates a deck' do
      expect(game.deck).to be_an_instance_of(Deck)
    end

    it 'creates a player list' do
      game.players.all? { |player| expect(player).to be_an_instance_of(Player) }
    end

    it 'passes all players' do
      expect(game.players.length).to eq(3)
    end

    it 'stores players in an array' do
      expect(game.players).to be_a(Array)
    end

    it 'sets pot to 0' do
      expect(game.pot).to eq(0)
    end

  end

end


##Attributes
##  Deck
##  Player_List
##  Current_Player
##  Pot

##Methods
## Play_Round
## Get_Move
## Deal_Cards
## Get_Hands
## Winner
