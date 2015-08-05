class String
  define_method(:rock_paper_scissors) do |player2|
    player1 = self
    message = ""

    if (player1 == player2)
      true
      message.concat("But you got a tie!")
      elsif ((player1=="rock") && (player2=="scissors"))||
        ((player1=="scissors") && (player2=="paper"))||
        ((player1=="paper") && (player2=="rock"))
        true
      else
        false
    end

  end
end
