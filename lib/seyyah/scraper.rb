class Seyyah::Scraper
    
    def self.scrape 
        doc = Nokogiri::HTML(open("https://lonelyplanet.com/"))
        doc.css("div.Submenu__list--3MiRl")[1].css("div.Item__container--_wmB6").each do |div|
            Seyyah::Region.create(div.css("a").text, div.css("a").attr("href").value)
        end 
        #self.scrape_countries
    end 

    def self.scrape_countries
        Seyyah::Region.all.each do |region|
            doc = Nokogiri::HTML(open(region.url))
            doc.css("div.top_places__wrap").css("li")[0...10].each do |country_data|
                region.countries << Country.new(country_data.css("a").text.strip)
            end
        end
    end
    
end
