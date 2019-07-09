#Seyyah 
    #--> Regions of the World
        #--> Region Description
        #--> Top 10 Countries by Region 
            #--> Country Description 
            #--> Top 10 Cities by Country 
            
require 'nokogiri'
require 'open-uri'

module Seyyah 
class Regions

    def self.regions(url)
        html = open(url)
        doc = Nokogiri::HTML(html)
        counter = 0

        doc.css("#destinations-menu-desktop .Submenu__list--3MiRl .Item__container--_wmB6").each do |n|
            regg = n.content
            counter += 1
            puts "#{counter}. #{regg}" 
        end
        #Outputs : Please Choose From the Following Regions: 
                    #1. Country1 
                    #2. Country 2
    end  

end 
end 