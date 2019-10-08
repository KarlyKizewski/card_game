class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end
end

class Deck
  def initialize
    @cards = []
    @ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K, :A]
    @suits = [:hearts, :spades, :diamonds, :clubs]

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank,suit)
      end
    end

  @cards.shuffle!
  end

  def deal
    @cards.shift.output_card
  end
end

deck = Deck.new
deck.deal 


# Prototypical Inheritance in JavaScript
function Card(rank, suit) {
  this.rank = rank;
  this.suit = suit;
}

Card.prototype.outputCard = function(){
  console.log(this.rank + " of " + this.suit);
}


var fourOfDiamonds = new Card(4, "diamonds");
fourOfDiamonds.outputCard();
