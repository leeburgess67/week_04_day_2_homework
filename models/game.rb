require_relative('./player2.rb')
require_relative('./player1.rb')
class Game

def initialize(player_1_choice,player_2_choice)
  @player_1_choice = player_1_choice
  @player_2_choice = player_2_choice
end

def play()

  if @player_1_choice == "rock" && @player_2_choice == "scissors"
    return "rock wins"
  end
  if @player_1_choice == "rock" && @player_2_choice == "rock"
    return "tie"
  end
  if @player_1_choice == "rock" && @player_2_choice == "paper"
    return "paper wins"
  end

  if @player_1_choice == "scissors" && @player_2_choice == "scissors"
    return "tie"
  end
  if @player_1_choice == "scissors" && @player_2_choice == "rock"
    return "scissors lose"
  end
  if @player_1_choice == "scissors" && @player_2_choice == "paper"
    return "scissors wins"
  end

  if @player_1_choice == "paper" && @player_2_choice == "scissors"
    return "paper lose"
  end
  if @player_1_choice == "paper" && @player_2_choice == "rock"
    return "paper wins"
  end
  if @player_1_choice == "paper" && @player_2_choice == "paper"
    return "tie"
  end

end


end
