class String
  define_method(:rock_paper_scissors) do |player2|
    player1 = self

    if (player1=="rock") && (player2=="scissors")
      true
    end

  end
end
