require_relative 'poker'

describe Player do

before do
  @holdings = 100
  @player1 = Player.new("jeff","baird",24,@holdings)
end

  it "has a capitalized first name" do 
    @player1.fname.should == "Jeff"
  end
  
  it "has a capitalized last name" do
    @player1.lname.should == "Baird"
  end
  
  it "has an age 18 or over" do 
    
    @player1.age.should >= 18
  end
  
  it "has holdings of over $0" do
    
    @player1.holdings.should >= 0
  end 
  
  it "Player has 5 cards" do
    
    @player1.hand.length.should == 5
  end

  context 'for dealing a new deck' do 
    before do
      @stack_of_cards
    end
    it 'is not an empty array'
    
  end