class NbaScoringLeaders::CLI

  def start
    NbaScoringLeaders::Scraper.new.make_years
    puts ""
    puts "I'm here to tell you the Yearly NBA Scoring Leaders."
    list_scoring_leaders
  end

  def list_scoring_leaders
    puts ""
    puts "Which years would you like to see first?"
    puts "
    Enter  1 for 2006-2015
    Enter 11 for 1996-2005 
    Enter 21 for 1985-1995
    Enter 31 for 1976-1985
    Enter 41 for 1966-1975 
    Enter 51 for 1956-1965
    Enter 61 for 1946-1955"
    puts ""
    input = gets.strip.to_i

    nba_years(input)
    
    puts ""
    puts "Type a year to learn more about that scoring champion."
    puts ""
    input = gets.strip

    year = NbaScoringLeaders::Year.year_with_info(input.to_i)

    print_year_with_info(year)

    puts "Would you like to see a different set of scoring champions? Enter Y or N."
    input = gets.strip.downcase
      if input == "y"
        start
      else
        puts ""
        puts "Cool - your new knowledge of NBA trivia will easily impress all of your friends."
        puts ""
        exit
      end
    end

  # access the array w/ scraped NBA data and use input to grab that index plus the following 9 indices to print to the command line
  def nba_years(from_number)
    puts ""
    puts "-------- NBA Scoring Leaders from #{from_number} - #{from_number+9} --------"
    puts ""
    NbaScoringLeaders::Year.all[from_number-1, 10].each do |year|
      puts "#{year.year} - #{year.player} - #{year.team} - #{year.average} ppg"
    end
  end

  def print_year_with_info(year)
    puts ""
    puts "In #{year.year}, #{year.player} scored #{year.total_points} total points in #{year.games_played} total games."
    puts ""
  end

end
