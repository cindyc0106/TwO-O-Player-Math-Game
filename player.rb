require "./questions.rb"

class Player
  
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def new_question
    @question = Questions.new
    puts "#{@name}: What does #{@question.num1} plus #{@question.num2} equal?"
    print "> "
    @user_answer = $stdin.gets.chomp.to_i
    if @question.correct_answer?(@user_answer)
      puts "#{@name}: YES! You are correct"
    else
      puts "#{@name}: Seriously? No!"
      @lives -= 1
    end
  
  end

end