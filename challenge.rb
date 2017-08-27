# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card
  attr_reader :question, :answer
  def initialize(card_array)
    @question = card_array[0]
    @answer = card_array[1]
    if @question == "What is the capital of Illinois?"
      @question = @question + " Is it: " + @answer + ", Sacramento, Atlanta, or Chicago"
    elsif @question == "Is Africa a country or a continent?"
      @question == @question + " Is it: country, or " + @answer
    end

  end

end

class Deck
  def initialize(trivia_data)
    @questions = trivia_data.keys
    @answers = trivia_data.values
  end

  def draw_card
    Card.new([@questions.shift, @answers.shift])
  end

  def remaining_cards
    @questions.length
  end
end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

# card = deck.draw_card
# p card.question
# p card.answer

lives = 1
score = 0
question_num = 0
incorrect_trivia_data = {}
while deck.remaining_cards > 0
  question_num = question_num + 1
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase 
    score = score + 1
    puts "Correct! You have gotten #{score} out of #{question_num} questions right!"
  elsif lives == 1
    lives =- 1
    puts "Incorrect! Give it another try:"
    user_answer = gets.chomp
    incorrect_trivia_data[card.question] = card.answer
    if user_answer.downcase == card.answer.downcase
      score = score + 1
      puts "#Correct! You have gotten #{score} out of #{question_num} questions right!"
    else
      puts "#Incorrect! You have gotten #{score} out of #{question_num} questions right!"
    end
  else 
    puts "#Incorrect! You have gotten #{score} out of #{question_num} questions right!"
    incorrect_trivia_data[card.question] = card.answer
  end
end

puts "Hurray! You finished the game. You got a total score of #{score} out of a total of 3."

if score < 3 
  puts "You got some questions wrong, would you like to try again?"
  user_input = gets.chomp.downcase
  if user_input == "yes"
    deck = Deck.new(incorrect_trivia_data)
    while deck.remaining_cards > 0
      card = deck.draw_card # card is an instance of the Card class
      puts card.question
      user_answer = gets.chomp
      if user_answer.downcase == card.answer.downcase 
        puts "Correct!"
      else "Incorrect! Game over..."
      end
    end
  else
  end
end





