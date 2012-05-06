require_relative 'deck'
## creating a player class allows a player to be created
class Player 
  attr_accessor :fname, :lname, :age
  attr_reader :holdings
    
    def initialize (holdings=100)
      @holdings = holdings
      deal = Deck.new
      @hand = deal.hand
    end
   
   def dealt 
    puts "#{@fname}'s hand is #{@hand}"
  end
end

