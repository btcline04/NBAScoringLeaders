class NbaScoringLeaders::Scraper

  def get_page
    Nokogiri::HTML(open("http://www.landofbasketball.com/awards/nba_scoring_leader_year.htm"))
  end

  def scrape_table_rows
    get_page.css("table.color-alt tr")
  end

  #scrape html table rows, create new Year instances using scraped data & initialized w/ instance variables listed below
  def make_years
    scrape_table_rows.each do |tr|
      if tr.css("td[7]").text.strip != "" && tr.css("td[7]").text.strip != "Games"
       NbaScoringLeaders::Year.new(
        tr.css("td[1]").text.gsub(/-.*/, ""),
        tr.css("td[2]").text.strip,
        tr.css("td[4]").text.strip,
        tr.css("td[5]").text.strip,
        tr.css("td[6]").text.strip,
        tr.css("td[7]").text.strip,
      )
      end
    end
  end

end