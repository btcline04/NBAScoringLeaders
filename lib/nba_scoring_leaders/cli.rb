class NBAScoringLeaders::CLI

  def call
    puts "I'm here to tell you the Yearly NBA Scoring Leaders"
    list_scoring_leaders
  end

  def list_scoring_leaders
    puts ""
    puts "Which years would you like to see first? 1985-1995, 1996-2005, 2006-2015?

    input = gets.strip.to_i
  end

end