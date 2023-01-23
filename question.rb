#Generates a random math question and answer
class Question

  attr_accessor :question, :answer

  def initialize
    left = rand(1..20)
    right = rand(1..20)
    operator = [:+, :-, :*, :/].sample

    self.question = "What is #{left} #{operator} #{right}?"
    self.answer = left.send(operator, right)
  end

end
