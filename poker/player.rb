require_relative 'deck'
class Player 
  attr_accessor :fname, :lname, :age
  attr_reader :holdings
    
    def initialize (fname, lname, age, holdings=100)
      @fname = fname.capitalize
      @lname = lname.capitalize
      @age = age
      @holdings = holdings
      deal = Deck.new
      @hand = deal.hand
    end
   
   def dealt 
    puts "#{@fname}'s hand is #{@hand}"
  end
end

