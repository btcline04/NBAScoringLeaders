class NBAScoringLeaders::CLI

  def call
    NBAScoringLeaders::Scraper.new.make_nba_scoring_leaders
    puts "I'm here to tell you the Yearly NBA Scoring Leaders"
    puts ""
    list_scoring_leaders
  end

  def list_scoring_leaders
    puts ""
    puts "Which years would you like to see first? 1990-2000, 2001-2010, 2011-2015?"
    puts ""
    input = gets.strip.to_i

    print_scoring_list(input)

    puts ""
    puts "Which year would you like more information on?"
    input = gets.strip.to_i

    year = NBAScoringLeaders::Year.find(input.to_i)

    print_year(year)

    puts ""
    puts "Would you like to know more about a different year? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      call
    else
      puts ""
      puts "No worries - enjoy beating your friends in trivia with your new NBA knowledge!"
      exit
    end
  end

def print_scoring_list(years)


end