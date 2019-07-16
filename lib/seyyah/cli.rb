#Seyyah 
    #--> Regions of the World
        #--> Region Description
        #--> Top 10 Countries by Region 
            #--> Country Description 
            #--> Top 10 Cities by Country 

class Seyyah::CLI 

    def start 
        Seyyah::Scraper.scrape 
        main_menu
    end 

    def main_menu
        puts "Welcome to Seyyah! Type 'list' to list the regions of the world! Type 'exit' to exit the program."
        input = gets.strip.downcase 

        case input 
        when "list"
            list_regions
            region_menu 
        when "exit"
            puts "Farewell! Thank you for using Seyyah!"
            abort 
        else 
            puts "Sorry! That's not a valid input!"
            main_menu
        end 
    end 

    def list_regions 
        Seyyah::Region.all.each_with_index do |region, index|
            index = index+1
            puts "#{index}. #{region.name}"
        end 
        region_menu 
    end 

    def region_menu
        "Please Choose From the Following Regions: Enter a number from 1 to 10. Type 'menu' at any time to go back to the main menu or type 'exit' to exit the program."
        input = gets.strip

        if input.downcase == "menu"
            main_menu 
        elsif input.downcase == "exit"
            puts "Farewell! Thank you for using Seyyah!"
            abort 
        elsif input.to_i.between?(1, Seyyah::Region.all.length)
            region = Seyyah::Region.all[input.to_i - 1]
            puts region.description 
        end 
    end 
end 
