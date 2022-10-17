class Questions

  attr_accessor :answer, :user_answer, :num1, :num2

  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = @num1 + @num2
    
  
  end

  def correct_answer?(user_input)
    @answer === user_input
  end



end