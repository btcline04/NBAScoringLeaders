class NbaScoringLeaders::Year

  attr_accessor :year, :player, :team, :average, :total_points, :games_played

  @@all = []

  def self.new_from_index(tr)
    self.new(
      tr.xpath("//tr/td[1]").text.gsub(/-.*/, ""),
      tr.xpath("//tr/td[2]").text.strip,
      tr.xpath("//tr/td[4]").text.strip,
      tr.xpath("//tr/td[5]").text.strip,
      tr.xpath("//tr/td[6]").text.strip,
      tr.xpath("//tr/td[7]").text.strip,
    )
  end

  def initialize(year = nil, player = nil, team = nil, average = nil, total_points = nil, games_played = nil)
    @year = year
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

end
