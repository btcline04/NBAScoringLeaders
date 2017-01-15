class NBAScoringLeaders::CLI

  def call
    puts "Yearly NBA Scoring Leaders:"
    list_scoring_leaders
  end

  def list_scoring_leaders
    puts <<-DOC
      2015 - Steph Curry - PPG
      2014 - Kevin Durant - PPG
      2013 - Kevin Durant - PPG
    DOC
  end

  
end