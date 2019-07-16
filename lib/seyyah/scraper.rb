class Seyyah::Scraper
    
    def self.scrape 
        doc = Nokogiri::HTML(open("https://lonelyplanet.com/"))
        doc.css("div.Submenu__list--3MiRl")[1].css("div.Item__container--_wmB6").each do |div|
            Seyyah::Region.create(div.css("a").text, div.css("a").attr("href").value)
        end      
        self.scrape_region_desc
        self.scrape_countries
    end 

    def self.scrape_countries
        Seyyah::Region.all.each do |region|
            doc = Nokogiri::HTML(open(region.url))

            doc.css("div.top_places__column .tlist__secondary-link")[0...10].each do |country|
                country_data = country.content 
                region.countries << Seyyah::Country.new(country_data)
            end 
            
        end
    end

    def self.scrape_region_desc
        Seyyah::Region.all.each do |region|
            doc = Nokogiri::HTML(open(region.url))

            region.description << doc.css(".intro-narrative__featured").text
        end 
    end 

    #def self.scrape_country_desc 
        

end
