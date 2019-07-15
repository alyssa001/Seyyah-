#Seyyah 
    #--> Regions of the World
        #--> Region Description
        #--> Top 10 Countries by Region 
            #--> Country Description 
            #--> Top 10 Cities by Country 
            
require 'nokogiri'
require 'open-uri'

#This file contains the scraping method for the initial user choice. A single method is contained in this class to get the regions from the host website and output them to the user. 

module Seyyah 
class Regions

    def self.regions(url)
        html = open(url)
        doc = Nokogiri::HTML(html)
        counter = 0

        doc.css("#destinations-menu-desktop .Submenu__list--3MiRl .Item__container--_wmB6").each do |n|
            regions_data = n.content
            counter += 1
            puts "#{counter}. #{regions_data}" 
        end
        #Outputs : Please Choose From the Following Regions: 
                    #1. Country1 
                    #2. Country 2
    end  

end 
end 