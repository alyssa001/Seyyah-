#Seyyah 
    #--> Regions of the World
        #--> Region Description
        #--> Top 10 Countries by Region 
            #--> Country Description 
            #--> Top 10 Cities by Country 
            

#The function of this class is to output to the user the information they desire about the country they previously chose. All the country information is contained in this class. 

require 'nokogiri'
require 'open-uri'

module Seyyah 
class Destinations
    def self.country_desc(url)
        html = open(url)
        doc = Nokogiri::HTML(html)

        greeter = doc.css(".intro-narrative__heading").text
        description = doc.css(".intro-narrative__featured").text
        puts "#{greeter}! \n #{description}"
        #Outputs : "Welcome to COUNTRY! " + Country Description 

        description_more = doc.css(".intro-narrative__text").text
        puts "#{description_more}"
        #Outputs a more detailed description of the country. 
        #FUTURE VERSION WILL OUTPUT DESTINATIONS: TOP CITIES
        puts "Thank you for using Seyyah! "

    end 

=begin    def self.get_dest(url)
        html = open(url)
        doc = Nokogiri::HTML(html)
        counter = 0 
        puts "The Top 10 Destinations in your chosen region are shown below. Enter a number from 1-10 to learn more about it!\n"
        puts"\n"
      
        doc.css("tlist__secondary-item").each do |n|
          reg = n.content 
          counter += 1 
          puts "#{counter}. #{reg}" if counter < 11
          
        end 
        #Outputs : 1. CITY
                #  2. CITY 
    end 
=end 
end 


class Africa

    def self.south_africa
        Destinations.country_desc("https://lonelyplanet.com/south-africa")
        ##Destinations.get_dest("https://lonelyplanet.com/south-africa")
    end 

    def self.kenya
        Destinations.country_desc("https://lonelyplanet.com/kenya")
        ##Destinations.get_dest("https://lonelyplanet.com/kenya")
    end 

    def self.morocco
        Destinations.country_desc("https://lonelyplanet.com/morocco")
        ##Destinations.get_dest("https://lonelyplanet.com/morocco")
    end 

    def self.botswana
        Destinations.country_desc("https://lonelyplanet.com/botswana")
        ##Destinations.get_dest("https://lonelyplanet.com/botswana")
    end 

    def self.tanzania
        Destinations.country_desc("https://lonelyplanet.com/tanzania")
        ##Destinations.get_dest("https://lonelyplanet.com/tanzania")
    end 

    def self.madagascar
        Destinations.country_desc("https://lonelyplanet.com/madagascar")
        ##Destinations.get_dest("https://lonelyplanet.com/madagascar")
    end 

    def self.egypt
        Destinations.country_desc("https://lonelyplanet.com/egypt")
        ##Destinations.get_dest("https://lonelyplanet.com/egypt")
    end 

    def self.ethiopia
        Destinations.country_desc("https://lonelyplanet.com/ethiopia")
        ##Destinations.get_dest("https://lonelyplanet.com/ethiopia")
    end 

    def self.namibia
        Destinations.country_desc("https://lonelyplanet.com/namibia")
        ##Destinations.get_dest("https://lonelyplanet.com/namibia")
    end 

    def self.zambia
        Destinations.country_desc("https://lonelyplanet.com/zambia")
        ##Destinations.get_dest("https://lonelyplanet.com/zambia")
    end 
end 

class Antartica

    def self.antartica
        puts "There are no separate countries in Antartica, but check out some cool facts: "
        Countries.get_region_info("https://www.lonelyplanet.com/antarctica-1007062")
    end 
end 

class Asia 

    def self.india
        Destinations.country_desc("https://lonelyplanet.com/india")
        ##Destinations.get_dest("https://lonelyplanet.com/india")
    end 

    def self.china
        Destinations.country_desc("https://lonelyplanet.com/china")
        ##Destinations.get_dest("https://lonelyplanet.com/china")
    end 

    def self.japan
        Destinations.country_desc("https://lonelyplanet.com/japan")
        ##Destinations.get_dest("https://lonelyplanet.com/japan")
    end 

    def self.thailand
        Destinations.country_desc("https://lonelyplanet.com/thailand")
        ##Destinations.get_dest("https://lonelyplanet.com/thailand")
    end 

    def self.indonesia
        Destinations.country_desc("https://lonelyplanet.com/indonesia")
        ##Destinations.get_dest("https://lonelyplanet.com/indonesia")
    end 

    def self.malaysia
        Destinations.country_desc("https://lonelyplanet.com/malaysia")
        ##Destinations.get_dest("https://lonelyplanet.com/malaysia")
    end 

    def self.philippines
        Destinations.country_desc("https://lonelyplanet.com/philippines")
        ##Destinations.get_dest("https://lonelyplanet.com/philippines")
    end 

    def self.vietnam
        Destinations.country_desc("https://lonelyplanet.com/vietnam")
        ##Destinations.get_dest("https://lonelyplanet.com/vietnam")
    end 

    def self.south_korea
        Destinations.country_desc("https://lonelyplanet.com/south-korea")
        ##Destinations.get_dest("https://lonelyplanet.com/south-korea")
    end 

    def self.myanmar #Burma
        Destinations.country_desc("https://lonelyplanet.com/myanmar-burma")
        ##Destinations.get_dest("https://lonelyplanet.com/myanmar-burma")
    end 
end 

class AustraliaPacific

    def self.australia
        Destinations.country_desc("https://lonelyplanet.com/australia")
        ##Destinations.get_dest("https://lonelyplanet.com/australia")
    end 

    def self.new_zealand
        Destinations.country_desc("https://lonelyplanet.com/new-zealand")
        ##Destinations.get_dest("https://lonelyplanet.com/new-zealand")
    end 

    def self.fr_polynesia
        Destinations.country_desc("https://lonelyplanet.com/tahiti-and-french-polynesia")
        ##Destinations.get_dest("https://lonelyplanet.com/tahiti-and-french-polynesia")
    end 

    def self.fiji
        Destinations.country_desc("https://lonelyplanet.com/fiji")
        ##Destinations.get_dest("https://lonelyplanet.com/fiji")
    end 

    def self.papua_new_guinea
        Destinations.country_desc("https://lonelyplanet.com/papua-new-guinea")
        ##Destinations.get_dest("https://lonelyplanet.com/papua-new-guinea")
    end 

    def self.cook_islands
        Destinations.country_desc("https://lonelyplanet.com/rarotonga-and-the-cook-islands")
        ##Destinations.get_dest("https://lonelyplanet.com/rarotonga-and-the-cook-islands")
    end 

    def self.vanuatu
        Destinations.country_desc("https://lonelyplanet.com/vanuatu")
        ##Destinations.get_dest("https://lonelyplanet.com/vanuatu")
    end 

    def self.new_caledonia
        Destinations.country_desc("https://lonelyplanet.com/new-caledonia")
        ##Destinations.get_dest("https://lonelyplanet.com/new-caledonia")
    end 

    def self.samoa
        Destinations.country_desc("https://lonelyplanet.com/samoa")
        ##Destinations.get_dest("https://lonelyplanet.com/samoa")
    end 

    def self.tonga
        Destinations.country_desc("https://lonelyplanet.com/tonga")
        ##Destinations.get_dest("https://lonelyplanet.com/tonga")
    end 
end 

class Caribbean 

    def self.cuba 
        Destinations.country_desc("https://lonelyplanet.com/cuba")
        ##Destinations.get_dest("https://lonelyplanet.com/cuba")
    end 
    
    def self.jamaica
        Destinations.country_desc("https://lonelyplanet.com/jamaica")
        ##Destinations.get_dest("https://lonelyplanet.com/jamaica")
    end 

    def self.dominican_republic
        Destinations.country_desc("https://lonelyplanet.com/dominican-republic")
        ##Destinations.get_dest("https://lonelyplanet.com/dominican-republic")
    end

    def self.puerto_rico
        Destinations.country_desc("https://lonelyplanet.com/puerto-rico")
        ##Destinations.get_dest("https://lonelyplanet.com/puerto-rico")
    end 

    def self.bahamas
        Destinations.country_desc("https://lonelyplanet.com/the-bahamas")
        ##Destinations.get_dest("https://lonelyplanet.com/the-bahamas")
    end 

    def self.trinidad_tobago
        Destinations.country_desc("https://lonelyplanet.com/trinidad-and-tobago")
        ##Destinations.get_dest("https://lonelyplanet.com/trinidad-and-tobago")
    end 

    def self.virgin_islands
        Destinations.country_desc("https://lonelyplanet.com/us-virgin-islands")
        ##Destinations.get_dest("https://lonelyplanet.com/us-virgin-islands")
    end 

    def self.haiti
        Destinations.country_desc("https://lonelyplanet.com/haiti")
        ##Destinations.get_dest("https://lonelyplanet.com/haiti")
    end 

    def self.british_virgin_isles
        Destinations.country_desc("https://lonelyplanet.com/british-virgin-islands")
        ##Destinations.get_dest("https://lonelyplanet.com/british-virgin-islands")
    end 

    def self.guadeloupe
        Destinations.country_desc("https://lonelyplanet.com/guadeloupe")
        ##Destinations.get_dest("https://lonelyplanet.com/guadeloupe")
    end 
end 

class CentralAmerica

    def self.costa_rica
        Destinations.country_desc("https://lonelyplanet.com/costa-rica")
        ##Destinations.get_dest("https://lonelyplanet.com/costa-rica")
    end 

    def self.nicaragua
        Destinations.country_desc("https://lonelyplanet.com/nicaragua")
        #Destinations.get_dest("https://lonelyplanet.com/nicaragua")
    end 

    def self.guatemala
        Destinations.country_desc("https://lonelyplanet.com/guatemala")
        #Destinations.get_dest("https://lonelyplanet.com/guatemala")
    end 

    def self.panama
        Destinations.country_desc("https://lonelyplanet.com/panama")
        #Destinations.get_dest("https://lonelyplanet.com/panama")
    end 

    def self.belize
        Destinations.country_desc("https://lonelyplanet.com/belize")
        #Destinations.get_dest("https://lonelyplanet.com/belize")
    end 

    def self.honduras
        Destinations.country_desc("https://lonelyplanet.com/honduras")
        #Destinations.get_dest("https://lonelyplanet.com/honduras")
    end 

    def self.el_salvador
        Destinations.country_desc("https://lonelyplanet.com/el-salvador")
        #Destinations.get_dest("https://lonelyplanet.com/el-salvador")
    end 
end

class Europe
    #Contains the top 10 countries in Europe
    #Version 2 will fix the formatting when non-English characters are used. 

    def self.italy
        Destinations.country_desc("https://lonelyplanet.com/italy")
        #Destinations.get_dest("https://lonelyplanet.com/italy")
    end 

    def self.spain
        Destinations.country_desc("https://lonelyplanet.com/spain")
        #Destinations.get_dest("https://lonelyplanet.com/spain")
    end 

    def self.france 
        Destinations.country_desc("https://lonelyplanet.com/france")
        #Destinations.get_dest("https://lonelyplanet.com/france")
    end 

    def self.england 
        Destinations.country_desc("https://lonelyplanet.com/england")
        #Destinations.get_dest("https://lonelyplanet.com/england")
    end 

    def self.greece
        Destinations.country_desc("https://lonelyplanet.com/greece")
        #Destinations.get_dest("https://lonelyplanet.com/greece")
    end 

    def self.germany
        Destinations.country_desc("https://lonelyplanet.com/germany")
        #Destinations.get_dest("https://lonelyplanet.com/germany")
    end 

    def self.turkey
        Destinations.country_desc("https://lonelyplanet.com/turkey")
        #Destinations.get_dest("https://lonelyplanet.com/turkey")
    end  

    def self.russia
        Destinations.country_desc("https://lonelyplanet.com/russia")
        #Destinations.get_dest("https://lonelyplanet.com/russia")
    end 

    def self.portugal 
        Destinations.country_desc("https://lonelyplanet.com/portugal")
        #Destinations.get_dest("https://lonelyplanet.com/portugal")
    end 

    def self.ireland
        Destinations.country_desc("https://lonelyplanet.com/ireland")
        #Destinations.get_dest("https://lonelyplanet.com/ireland")
    end   
end 

class MiddleEast 

    def self.iran 
        Destinations.country_desc("https://lonelyplanet.com/iran")
        #Destinations.get_dest("https://lonelyplanet.com/iran")
    end 

    def self.emirates
        Destinations.country_desc("https://lonelyplanet.com/united-arab-emirates")
        #Destinations.get_dest("https://lonelyplanet.com/united-arab-emirates")
    end 

    def self.israel
        Destinations.country_desc("https://lonelyplanet.com/israel")
        #Destinations.get_dest("https://lonelyplanet.com/israel")
    end 

    def self.jordan 
        Destinations.country_desc("https://lonelyplanet.com/jordan")
        #Destinations.get_dest("https://lonelyplanet.com/jordan")
    end 

    def self.oman 
        Destinations.country_desc("https://lonelyplanet.com/oman")
        #Destinations.get_dest("https://lonelyplanet.com/oman")
    end 

    def self.saudi_arabia
        Destinations.country_desc("https://lonelyplanet.com/saudi-arabia")
        #Destinations.get_dest("https://lonelyplanet.com/saudi-arabia")
    end 

    def self.lebanon
        Destinations.country_desc("https://lonelyplanet.com/lebanon")
        #Destinations.get_dest("https://lonelyplanet.com/lebanon")
    end 

    def self.qatar
        Destinations.country_desc("https://lonelyplanet.com/qatar")
        #Destinations.get_dest("https://lonelyplanet.com/qatar")
    end 

    def self.bahrain
        Destinations.country_desc("https://lonelyplanet.com/bahrain")
        #Destinations.get_dest("https://lonelyplanet.com/bahrain")
    end 

    def self.kuwait
        Destinations.country_desc("https://lonelyplanet.com/kuwait")
        #Destinations.get_dest("https://lonelyplanet.com/kuwait")
    end 
end 

class NorthAmerica

    def self.usa
        Destinations.country_desc("https://lonelyplanet.com/usa")
        #Destinations.get_dest("https://lonelyplanet.com/usa")
    end 

    def self.canada
        Destinations.country_desc("https://lonelyplanet.com/canada")
        #Destinations.get_dest("https://lonelyplanet.com/canada")
    end 

    def self.mexico
        Destinations.country_desc("https://lonelyplanet.com/mexico")
        #Destinations.get_dest("https://lonelyplanet.com/mexico")
    end 
end 

class SouthAmerica
    
    def self.brazil
        Destinations.country_desc("https://lonelyplanet.com/brazil")
        #Destinations.get_dest("https://lonelyplanet.com/brazil")
    end 

    def self.argentina
        Destinations.country_desc("https://lonelyplanet.com/argentina")
        #Destinations.get_dest("https://lonelyplanet.com/argentina")
    end 

    def self.peru
        Destinations.country_desc("https://lonelyplanet.com/peru")
        #Destinations.get_dest("https://lonelyplanet.com/peru")
    end 

    def self.chile
        Destinations.country_desc("https://lonelyplanet.com/chile")
        #Destinations.get_dest("https://lonelyplanet.com/chile")
    end 

    def self.colombia
        Destinations.country_desc("https://lonelyplanet.com/colombia")
        #Destinations.get_dest("https://lonelyplanet.com/colombia")
    end 

    def self.ecuador
        Destinations.country_desc("https://lonelyplanet.com/ecuador")
        #Destinations.get_dest("https://lonelyplanet.com/ecuador")
    end 

    def self.bolivia
        Destinations.country_desc("https://lonelyplanet.com/bolivia")
        #Destinations.get_dest("https://lonelyplanet.com/bolivia")
    end 

    def self.venezuela
        Destinations.country_desc("https://lonelyplanet.com/venezuela")
        #Destinations.get_dest("https://lonelyplanet.com/venezuela")
    end 

    def self.uruguay
        Destinations.country_desc("https://lonelyplanet.com/uruguay")
        #Destinations.get_dest("https://lonelyplanet.com/uruguay")
    end 

    def self.paraguay
        Destinations.country_desc("https://lonelyplanet.com/paraguay")
        #Destinations.get_dest("https://lonelyplanet.com/paraguay")
    end 
end 
end 