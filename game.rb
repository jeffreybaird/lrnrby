require_relative 'player'
class Game
  attr_reader :hand
  attr_accessor :make_game
  def initialize numplayers
    @numplayers = numplayers
    hand = []
  end
  def make_game
    i = 0
    while i < @numplayers
    hand << Player.new()
    i+=1
    end
  end
end
game1 = Game.new(4)
game1.make_game
puts game1.hand
