class NbaScoringLeaders::CLI

  def start
    puts "I'm here to tell you the Yearly NBA Scoring Leaders."
    list_scoring_leaders
  end

  def list_scoring_leaders
    puts ""
    puts "Which years would you like to see first? 1985-1995, 1996-2005, 2006-2015?"
    input = gets.strip.to_i

    nba_years(input)
    
    puts ""
    puts "Type a year to learn more about that scoring champion."
    input = gets.strip

    year = NBAScoringLeaders::Year.find(input.to_i)

    print_year_with_info(year)

    puts ""
    puts "Would you like to learn more about a specific year? Enter Y or N."
    inputs = gets.strip.downcase
      if input == "y"
        start
      else
        puts ""
        puts "Cool - your new knowledge of NBA trivia will easily impress all of your friends."
        exit
      end
    end

  def nba_years(from_number)

  end

end