require './card.rb'
class Deck
    attr_reader :cards
    def initialize
        #create an array
        
        @cards = []
        @suits = ["hearts", "clubs", "diamonds", "spades"]
        #populate the cards array with the 52 card objects using a nested loop
        for value in 1..13
            @suits.each do |suit|
                @cards << Card.new(value, suit)
            end
        end
    end

    def shuffle
       @cards.shuffle!
    end

    def draw
        @cards.slice!(rand(@cards.length))
    end
end

deck = Deck.new
puts deck.draw