require './lib/card'

class Turn
  attr_reader  :guess,
               :card

  def initialize(guess, card)
    @guess = guess
    @card  = card
  end

  def correct?
    @guess == card.answer
  end

  def feedback
    if correct? == true
      put "Correct!"
    else
      put "Incorrect."
    end
  end


end
