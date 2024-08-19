class MathGame
  def initialize
    @players = [
      Player.new("Player 1"),
      Player.new("Player 2")
    ]
    @current_player = @players.first
  end

  def switch_player
    if @current_player = @players.first
      @current_player = @players.last
    else
      @current_player = @players.first
    end
  end


end

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

class Question
  attr_reader :number1, number2

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def ask_question
    puts "#{player.name}: What does #{number1} plus #{number2} equal?"
  end

  def correct_answer?(answer)
    answer == number1 + number2
  end

end