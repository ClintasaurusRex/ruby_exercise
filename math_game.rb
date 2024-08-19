class MathGame
  # Set up game with two players and sets up the current player to first
  def initialize
    @players = [
      Player.new("Player 1"),
      Player.new("Player 2")
    ]
    @current_player = @players.first
  end

  # Alternates the current player between the two players
  def switch_player
    if @current_player == @players.first
      @current_player = @players.last
    else
      @current_player = @players.first
    end
  end

  # Main game loop, This makes it so that as long as both players have lives the game continues,
  def play_game
    while @players.all? {
      |player| player.lives > 0 }
      question = Question.new
      puts "#{@current_player.name}: What does #{question.number1} plus
      #{question.number2} equal?"

      print"> "
      answer = gets.chomp.to_i

      if question.correct_answer?(answer)
        puts "#{@current_player.name}: YES! You are correct"
        puts "------ NEW TURN ------"
        @current_player.score_increase
      else
        puts "#{@current_player.name}: INCORRECT!"
        puts "------ NEW TURN ------"
        @current_player.lose_life
      end

      display_scores
      switch_player
    end
    game_over
  end
  def display_scores
    puts "P1: #{@players.first.lives}/3 vs P2: #{@players.last.lives}/3"
  end

  def game_over
    winner = @players.find { |player| player.lives > 0 }
    puts "#{winner.name} wins with a score of #{winner.score}/3"
    puts "------ GAME OVER ------"
  end
end