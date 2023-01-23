## player_1
- will house the score of the player, and lives
- method pick Q
- method answer

## player_2
- will house the score of the player, and lives
- method pick Q
- method answer
  
## Questions
- will house each question
- display Q when selected
- display if answer is correct or not
- remove life from player

## Method to check each players  lives and switch to next turn

## Outputs:
- Player 1: ...
- Seriously? No!
- YES! You are correct.
- P1: 2/3 vs P2: 3/3
- ----- NEW TURN -----
- Player # wins with a score of 1/3
- ----- GAME OVER -----
- Good Bye

###Description:
Create a 2-Player math game where players take turns to answer simple 
math addition problems. A new math question is generated for each turn 
by picking two numbers between 1 and 20. The player whose turn it is 
is prompted the question and must answer correctly or lose a life.


###Tips:
- Create a new project folder and track it using git; publish it to GitHub
- This project will contain multiple classes. Each class should be defined in its 
  own rb file. You should not put any other code outside the class definition
- Define a main.rb file that will require all the other files
- Use gets.chomp to get input from users and puts for output
- Isolate your I/O logic to one or two classes. Don't allow all your classes 
  to interact (gets/puts) with the User
- Remember to build incrementally, writing small amounts of runnable code instead 
  of writing out a whole bunch of classes/methods that are not yet testable/runnable.
- Use puts, raise some_val.inspect, and byebug to help with debugging
