class String
  define_method(:rock_paper_scissors) do |player2|
    player1 = self
    valid_input=["rock","paper","scissors"]

    if valid_input.include?(player1 && player2 || player1)
      else
        return "Please only enter rock, paper or scissors"
    end

    player_comp="rock"
    random_nr = 1+rand(3)
    if random_nr == 1
      player_comp="rock"
    elsif random_nr == 2
      player_comp="paper"
    elsif random_nr == 3
      player_comp="scissors"
    else
    end
    player_comp

    if (player1 == player_comp)
      return "You got a tie!"
    elsif ((player1=="rock") && (player_comp=="scissors"))||
      ((player1=="scissors") && (player_comp == "paper"))||
      ((player1=="paper") && (player_comp == "rock"))
      return "Player1 Wins!"
    else
      return "Player2 Wins!"
    end

    if (player1 == player2)
      return "You got a tie!"
    elsif ((player1=="rock") && (player2=="scissors"))||
      ((player1=="scissors") && (player2=="paper"))||
      ((player1=="paper") && (player2=="rock"))
      return "Player1 Wins!"
    else
      return "Player2 Wins!"
    end

  end
end
