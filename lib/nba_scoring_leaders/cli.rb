class NbaScoringLeaders::CLI

  def start
    puts "I'm here to tell you the Yearly NBA Scoring Leaders."
    list_scoring_leaders
  end

  def list_scoring_leaders
    puts ""
    puts "Which years would you like to see first? 1946-1955, 1956-1965, 1966-1975, 1976-1985, 1986-1995, 1996-2005, or 2006-2015?"
    puts ""
    input = gets.strip.to_i

    nba_years(input)
    
    puts ""
    puts "Type a year to learn more about that scoring champion."
    input = gets.strip

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
    puts ""
    puts "-------- NBA Scoring Leaders from #{from_number} - #{from_number+9} --------"
    puts ""
    NbaScoringLeaders::Year.all[from_number-1, 10].each do |year|
      puts "#{year.year} - #{year.player} - #{year.team} - #{year.average+ ppg}"
    end
  end

end