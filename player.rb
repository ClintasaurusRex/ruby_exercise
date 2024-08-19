class Player
  attr_accessor :name, :lives, :score

  def initialize(name, lives = 3, score = 0)
    @name = name
    @lives = lives
    @score = score
  end

  def lose_life
    @lives -= 1
  end

  def score_increase
    @score += 1
  end
end
