class NbaScoringLeaders::Year

  attr_accessor :year, :player, :team, :average, :total_points, :games_played

  @@all = []

  # create new Year instances using scraped data & initialized w/ instance variables listed below
  def self.new_from_index(tr)
    self.new(
      tr.css("td[1]").text.gsub(/-.*/, ""),
      tr.css("td[2]").text.strip,
      tr.css("td[4]").text.strip,
      tr.css("td[5]").text.strip,
      tr.css("td[6]").text.strip,
      tr.css("td[7]").text.strip,
    )
  end

  def initialize(year = nil, player = nil, team = nil, average = nil, total_points = nil, games_played = nil)
    @year = year.to_i
    @player = player
    @team = team
    @average = average
    @total_points = total_points
    @games_played = games_played
    @@all << self
  end

  def self.all
    @@all
  end

  # find the Year objects w/ the correct information asked for from the CLI
  def self.year_with_info(year)
      @@all.find {|x| x.year == year}
      end

end
