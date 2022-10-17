require "./player.rb"
require "./questions.rb"

class Game

  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")

  end

  def start
    puts "Welcome #{@player1.name} and #{@player2.name}"
    new_turn
  end

  def check_lives
    if @player1.lives <= 0
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      exit
    end
    if @player2.lives <= 0
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      exit
    end
  end

  def new_turn
    @player1.new_question
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    check_lives
    puts "-----NEW TURN-----"
    @player2.new_question
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    check_lives
    puts "-----NEW TURN-----"
    new_turn
  end

end
