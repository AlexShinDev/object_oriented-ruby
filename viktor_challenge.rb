class Card
  attr_reader :question, :answer
  def initialize(card_array)
    @question = card_array[0]
    @answer = card_array[1]
  end


end

class Deck


  def initialize(deck_hash)
    @questions = deck_hash.keys
    @answers = deck_hash.values    
  end  

  def draw_card
    Card.new([
              @questions.shift,
              @answers.shift
            ])
  end

  # def remaining_cards
  #   @questions.length
  # end


end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class
card = deck.draw_card
p card.question


## while deck.remaining_cards > 0
#   card = deck.draw_card # card is an instance of the Card class
#   puts card.question
#   user_answer = gets.chomp
#   if user_answer.downcase == card.answer.downcase
#     puts "Correct!"
#   else
#     puts "Incorrect!"
#   end
 # end