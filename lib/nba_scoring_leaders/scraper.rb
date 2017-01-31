class NbaScoringLeaders::Scraper

  def get_page
    Nokogiri::HTML(open("http://www.landofbasketball.com/awards/nba_scoring_leader_year.htm"))
  end

  def scrape_table_rows
    get_page.css("table.color-alt tr")
  end

  #scrape html table rows, push scraped data to new_from_index method if the table cells aren't empty
  def make_years
    scrape_table_rows.each do |tr|
      if tr.css("td[7]").text.strip != "" && tr.css("td[7]").text.strip != "Games"
        NbaScoringLeaders::Year.new_from_index(tr)
      end
    end
  end

end