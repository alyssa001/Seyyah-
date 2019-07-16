#Seyyah 
    #--> Regions of the World
        #--> Region Description
        #--> Top 10 Countries by Region 
            #--> Country Description 
            #--> Top 10 Cities by Country 

class Seyyah::CLI 

    def start 
        puts "Loading....Please Wait..."
        Seyyah::Scraper.scrape 
        main_menu
    end 

    def main_menu
        puts "Welcome to Seyyah! Type 'list' to list the regions of the world! Type 'exit' to exit the program."
        input = gets.strip.downcase 

        case input 
        when "list"
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
    end 

    def region_menu
        puts "Please Choose From the Following Regions: Enter a number from 1 to 10. Type 'menu' at any time to go back to the main menu or type 'exit' to exit the program."
        list_regions
        
        input = gets.strip

        if input.downcase == "menu"
            main_menu 
        elsif input.downcase == "exit"
            puts "Farewell! Thank you for using Seyyah!"
            abort 
        elsif input.to_i.between?(1, 10)
            index_region = input.to_i-1 
            puts "Welcome to #{Seyyah::Region.all[index_region].name}!"
            puts Seyyah::Region.all[index_region].description
            puts "The top 10 countries in #{Seyyah::Region.all[index_region].name} are: " unless index_region == 1 
            Seyyah::Region.all[index_region].countries.each_with_index do |country, index|
                index = index+1
                puts "#{index}. #{country.name}"
            end  
            another 
        end 
    end 

    def another
        puts "Would you like to learn about another region? Enter 'menu' to return to the main menu or 'exit' to exit."
        input = gets.strip 

        case input.downcase 
        when "exit"
            abort 
        when "menu"
            main_menu
        else "That is not a valid input!"
        end 
    end 
end 