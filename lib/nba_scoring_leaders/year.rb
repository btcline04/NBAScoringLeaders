class NbaScoringLeaders::Year

  attr_accessor :year, :player, :team, :average, :total_points, :games_played

  @@all = []

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
