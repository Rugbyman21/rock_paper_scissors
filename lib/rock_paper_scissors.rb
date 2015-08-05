class String
  define_method(:rock_paper_scissors) do |player2|
    player1 = self
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
