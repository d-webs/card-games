# Should be universal. Holds card objects.
class Deck
  attr_accessor :deck

  SUITS = %w[hearts diamonds clubs spades].freeze
  VALUES = Array(1..13)

  def initialize
    @deck = []
  end

  def populate_deck
    SUITS.each do |suit|
      VALUES.each do |value|
        deck << Card.new(suit, value)
      end
    end
  end
end

# This class is for cards
class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
    @name = "#{value} of #{suit}"
  end

  FACE_CARDS = {
    1 => 'ace',
    11 => 'jack',
    12 => 'queen',
    13 => 'king'
  }.freeze
end
