class Card
    attr_reader :value, :suit
    def initialize(value, suit)
        @value = value
        if (@value > 13 || @value < 1) || !@value.is_a?(Integer) 
            raise ArgumentError
        end
        @suit = suit
        
        if ["hearts", "diamonds", "spades", "clubs"].include?(@suit)
            @suit = suit
        else
            raise ArgumentError
        end
    end

    def face

        if @value == 1
            return "Ace"           
        elsif @value == 11  then
            return "Jack"
        elsif @value == 12 then
            return "Queen"
        elsif @value == 13  then
            return "King"
        else
            return @value.to_s

        end
    end
end