class Deck
  attr_accessor :shuffle_deck
  def initialize (num_players=2, game=1)
    @game = game
    @num_players = num_players
  end
  def hand 
    shuffle_deck
      @newhand = []
      @newhand << @newdeck.pop
      @newhand << @newdeck.pop
      @newhand << @newdeck.pop
      @newhand << @newdeck.pop
      @newhand << @newdeck.pop
  end
  def shuffle_deck 
    newsuits = %w(hearts spades clubs diamonds )
    newvalue = %w(Ace 2 3 4 5 6 7 8 9 10 Jack Queen King)
    @newdeck = []

      newvalue.each do |card|
        newsuits.each do |suited|
        @newdeck << "#{card} of #{suited}"
        @newdeck = @newdeck.shuffle
        end
      end   
        @newdeck = @newdeck.shuffle 
  end

end

deck1 = Deck.new

class Player 
  attr_accessor :fname, :lname, :age
  attr_reader :holdings
    
    def initialize (fname, lname, age=18, holdings=100)
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




player1 = Player.new("Jeff", "Baird")
player1.dealt

