require './question'
require './player'

# starts a new round, generates a new question for each player
def start_round(p1, p2, inital_lives)
  provide_question(p1)
  provide_question(p2)

  check_if_lose(p1, p2, inital_lives) #check if anyone has lost
end

# Takes provided player and tests them
def provide_question (player)
  problem = Question.new  #Generates new question
  question = problem.question
  answer = problem.answer

  puts "#{player.name}: #{question}"
  print "> "
  player_answer = gets.chomp

  if player_answer.to_i == answer
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
    player.lives = player.lives.to_i - 1
  end
end

# check if either or both players have lost, ends game or starts new round
def check_if_lose (p1, p2, lives)

  if p1.lives == 0 && p2.lives == 0
    puts "You both are such disappointment!"
  elsif p1.lives == 0
    puts "#{p2.name} wins with a score of #{p2.lives}/#{lives}"
  elsif p2.lives == 0
    puts "#{p1.name} wins with a score of #{p1.lives}/#{lives}"
  else
    puts "#{p1.name}: #{p1.lives}/#{lives} vs #{p2.name}: #{p2.lives}/#{lives}"
    puts "----- NEW TURN -----"
    start_round(p1, p2, lives)
  end

end


# Start the game
puts 'Welcome to the TwO-O-Player Math game!'
print 'First player, what is your name?: '
p1_name = gets.chomp
print 'Second player, what is your name?: '
p2_name = gets.chomp
print 'How many lives?: '
lives = gets.chomp
puts '----- FIRST TURN -----'
player1 = Player.new(p1_name, lives)
player2 = Player.new(p2_name, lives)
start_round(player1, player2, lives)
puts "----- GAME OVER -----"
puts "Good bye!"