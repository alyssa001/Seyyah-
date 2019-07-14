#Seyyah 
    #--> Regions of the World
        #--> Region Description
        #--> Top 10 Countries by Region 
            #--> Country Description 
            #--> Top 10 Cities by Country 
            
require 'nokogiri'
require 'open-uri'
require_relative 'regions.rb'
require_relative 'destination.rb'

module Seyyah 
class Countries 

    def self.get_region_info(url)
        html = open(url)
        doc = Nokogiri::HTML(html)
        greeter = doc.css(".intro-narrative__heading").text
        description = doc.css(".intro-narrative__featured").text
        puts "#{greeter}! \n #{description}"
        #Outputs : "Welcome to REGION! " + Region Description 
    end 

    def self.get_countries(url)
        html = open(url)
        doc = Nokogiri::HTML(html)
        counter = 0 
        puts "The Top 10 Countries in your chosen region are shown below. Enter a number from 1-10 to learn more about it!\n"
        puts"\n"
      
        doc.css("div.top_places__column .tlist__secondary-link").each do |n|
          reg = n.content 
          counter += 1 
          puts "#{counter}. #{reg}" if counter < 11
        end 
        #Outputs : 1. COUNTRY 
                #  2. COUNTRY 
    end 

    def self.africa 
        self.get_region_info("https://lonelyplanet.com/africa")
        self.get_countries("https://lonelyplanet.com/africa")
    end 

    def self.antartica
        self.get_region_info("https://www.lonelyplanet.com/antarctica-1007062")
    end 

    def self.asia
        self.get_region_info("https://lonelyplanet.com/asia")
        self.get_countries("https://lonelyplanet.com/asia")
    end 

    def self.australia_pacific
        self.get_region_info("https://www.lonelyplanet.com/pacific")
        self.get_countries("https://www.lonelyplanet.com/pacific")
    end 

    def self.caribbean 
        self.get_region_info("https://lonelyplanet.com/caribbean")
        self.get_countries("https://lonelyplanet.com/caribbean")
    end 

    def self.c_america 
        self.get_region_info("https://lonelyplanet.com/central-america")
        self.get_countries("https://lonelyplanet.com/central-america")
    end 

    def self.europe
        self.get_region_info("https://lonelyplanet.com/europe")
        self.get_countries("https://lonelyplanet.com/europe")
    end 

    def self.m_east
        self.get_region_info("https://www.lonelyplanet.com/middle-east") 
        self.get_countries("https://www.lonelyplanet.com/middle-east")
    end 

    def self.n_america
        self.get_region_info("https://www.lonelyplanet.com/north-america")
        self.get_countries("https://www.lonelyplanet.com/north-america")
    end 

    def self.s_america
        self.get_region_info("https://www.lonelyplanet.com/south-america")
        self.get_countries("https://www.lonelyplanet.com/south-america")
    end 

end 
end 