class NBAScoringLeaders::Year

  attr_accessor :year, :player, :team, :average, :total_points, :games_played

  @@all = []

  def initialize(year = nil, player = nil, team = nil, average = nil)
    @year = year
    @player = player
    @team = team
    @average = average
  end









end