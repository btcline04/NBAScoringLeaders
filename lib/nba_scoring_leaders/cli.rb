class NBAScoringLeaders::CLI

  def call
    puts "I'm here to tell you the Yearly NBA Scoring Leaders"
    puts ""
    list_scoring_leaders
  end

  def list_scoring_leaders
    puts ""
    puts "Which years would you like to see first? 1970-1980, 1981-1990, 1991-2000, 2001-2010, 2011-15?    
    puts ""
    input = gets.strip.to_i
  end

end