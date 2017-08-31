require_relative 'deck'

class Hearts
  attr_accessor :deck, :player1, :player2, :player3, :player4, :players
  def initialize
    @deck = Deck.new
    @player1 = Player.new('John')
    @player2 = Player.new('Jacob')
    @player3 = Player.new('Jingleheimer')
    @player4 = Player.new('Smith')
    @players = [player1, player2, player3, player4]
  end

  def deal
    players.each {}
  end

end



class Player
  attr_accessor :name, :hand

  def initialize(name = 'David')
    @name = name
    @hand = []
  end

end
