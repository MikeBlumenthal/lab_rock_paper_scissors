class Game

 attr_reader :hand1, :hand2

  def initialize(hand1, hand2)
    @player1 = "Player 1"
    @player2 = "Player 2"
    @hand1 = hand1
    @hand2 = hand2
  end

  def play?
    while @hand1 == "rock"
      if @hand2 == "scissors"
        return true
      elsif @hand2 == "paper"
        return false
      else
        return nil
      end
    end

    while @hand1 == "paper"
      if @hand2 == "rock"
        return true
      elsif @hand2 == "scissors"
        return false
      else
        return nil
      end
    end

    while @hand1 == "scissors"
      if @hand2 == "paper"
        return true
      elsif @hand2 == "rock"
        return false
      else
        return nil
      end
    end
  end

  def draw?
    if self.play? == nil
      return true
    end
  end

  def winner
    result = self.play?
    return @player1 if result == true
    return @player2 if result == false
  end

  def loser
    result = self.play?
    return @player2 if result == true
    return @player1 if result == false
  end

  def winning_hand
    result = self.play?
    return @hand1 if result == true
    return @hand2 if result == false
  end

  def losing_hand
    result = self.play?
    return @hand2 if result == true
    return @hand1 if result == false
  end

end
