class NBAScoringLeaders::Year

  attr_accessor :year, :player, :team, :average, :total_points, :games_played

  @@all = []

  def initialize(year = nil, player = nil, team = nil, average = nil)
    @year = year
    @player = player
    @team = team
    @average = average
  end

  def self.all
    @@all
  end

  def scrape_lob
    doc = Nokogiri::HTML(open("http://www.landofbasketball.com/awards/nba_scoring_leader_year.htm"))
    binding.pry

  def year

  end

  def player

  end

  def team

  end

  def average

  end

  def total_points

  end

  def games_played

  end











end