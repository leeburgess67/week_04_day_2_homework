require_relative('./player2.rb')
require_relative('./player1.rb')
class Game

attr_reader :player_1_choice, :player_2_choice

def initialize(player_1_choice,player_2_choice)
  @player_1_choice = player_1_choice
  @player_2_choice = player_2_choice
end

def play()

  if @player_1_choice == "rock" && @player_2_choice == "scissors"
    return "PLAYER 1 WINS!"
  end
  if @player_1_choice == "rock" && @player_2_choice == "rock"
    return "A TIE!"
  end
  if @player_1_choice == "rock" && @player_2_choice == "paper"
    return "PLAYER 2 WINS!"
  end

  if @player_1_choice == "scissors" && @player_2_choice == "scissors"
    return "A TIE!"
  end
  if @player_1_choice == "scissors" && @player_2_choice == "rock"
    return "PLAYER 2 WINS!"
  end
  if @player_1_choice == "scissors" && @player_2_choice == "paper"
    return "PLAYER 1 WINS!"
  end

  if @player_1_choice == "paper" && @player_2_choice == "scissors"
    return "PLAYER 2 WINS!"
  end
  if @player_1_choice == "paper" && @player_2_choice == "rock"
    return "PLAYER 1 WINS!"
  end
  if @player_1_choice == "paper" && @player_2_choice == "paper"
    return "A TIE!"
  end

end


end
