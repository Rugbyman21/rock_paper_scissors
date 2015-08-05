class String
  define_method(:rock_paper_scissors) do |player2|
    player1 = self
    valid_input=["rock","paper","scissors"]

    if valid_input.include?(player1 && player2)
      else
        return "Please only enter rock, paper or scissors"
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
