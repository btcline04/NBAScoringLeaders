class NbaScoringLeaders::Scraper

  def self.get_page
    Nokogiri::HTML(open("http://www.landofbasketball.com/awards/nba_scoring_leader_year.htm"))
  end

  def self.scrape_years_index
    self.get_page.css("table.color-alt tr").text.strip
  end

  def make_years
    scrape_years_index.each do |tr|
      NbaScoringLeaders::Year.new_from_index(tr)
    end
  end

end


# all players = doc.css("div.rd-tbl-2 tr td[2]").text.strip
# all years = doc.css("div.rd-tbl-2 tr td[1]").text.strip
# table w/ all information = doc.css("table.color-alt tr").text.strip