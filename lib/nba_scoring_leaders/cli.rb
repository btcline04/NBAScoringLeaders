class NBAScoringLeaders::CLI

  def call
    list_scoring_leaders
    menu
  end

  def list_scoring_leaders
    puts ""
    puts "Yearly NBA Scoring Leaders:"
    puts <<-DOC
      2015 - Steph Curry - PPG
      2014 - Kevin Durant - PPG
      2013 - Kevin Durant - PPG
    DOC
  end

  def menu
    puts ""
    puts "Which year would you like to know more about?"
    puts ""
  end


end