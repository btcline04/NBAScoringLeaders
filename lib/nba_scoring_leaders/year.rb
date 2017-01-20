class NbaScoringLeaders::Year

  attr_accessor :year, :player, :team, :average, :total_points, :games_played

  @@all = []

  def initialize(year = nil, player = nil, team = nil, average = nil)
    @year = year
    @player = player
    @team = team
    @average = average
    @@all << self
  end

  def self.all
    @@all
  end

  def self.scrape_lob
    doc = Nokogiri::HTML(open("http://www.landofbasketball.com/awards/nba_scoring_leader_year.htm"))
    binding.pry

    year = doc.xpath("//tr[4]/td[1]").text.gsub(/-.*/, "")
    player = doc.xpath("//tr[4]/td[2]").text
    team = doc.xpath("//tr[4]/td[4]").text
    average = doc.xpath("//tr[4]/td[5]").text.strip
    total_points = doc.xpath("//tr[4]/td[6]").text.strip
    games_played = doc.xpath("//tr[4]/td[7]").text.strip

  end

  # def year

  # end

  # def player

  # end

  # def team

  # end

  # def average

  # end

  # def total_points

  # end

  # def games_played

  # end



end
