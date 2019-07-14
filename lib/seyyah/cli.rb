#Seyyah 
    #--> Regions of the World
        #--> Region Description
        #--> Top 10 Countries by Region 
            #--> Country Description 
            #--> Top 10 Cities by Country 
            
require_relative 'regions.rb'
require_relative 'countries.rb'
require_relative 'destination.rb'

module Seyyah 
class CLI 

    def start
        user_interface
    end 

    def user_interface
        input = " "
        puts "Welcome! What region would you like to learn more about?"
        puts "Please Choose From the Following Regions: Enter a number from 1 to 10."
        Regions.regions("https://lonelyplanet.com")
        puts " "

        input = gets.chomp 
        if input == "exit"
            puts "Farewell! Thank you for using Seyyah!"
            abort 
        else 
            input = input.to_i
        end 

        case input 
        when 1
            Countries.africa
            input = " "
            input = gets.chomp 

            if input == "exit"
                puts "Farewell! Thank you for using Seyyah!"
                abort 
            else 
                input = input.to_i
            end 
         
            case input 
            when 1
                Africa.south_africa
            when 2 
                Africa.kenya
            when 3
                Africa.morocco
            when 4 
                Africa.botswana
            when 5 
                Africa.tanzania
            when 6 
                Africa.madagascar
            when 7 
                Africa.egypt
            when 8 
                Africa.ethiopia
            when 9 
                Africa.namibia
            when 10 
                Africa.zambia
            else 
                "Sorry ! That's not a valid response!"
            end 
        

        when 2 
            Countries.antartica
            input = " "
            input = gets.chomp 
            if input == "exit"
                puts "Farewell! Thank you for using Seyyah!"
                abort 
            else 
                input = input.to_i
            end 
            
            Antartica.antartica
            if input == "exit"
                puts "Farewell! Thank you for using Seyyah!"
                abort 
            end 

            
        when 3 
            Countries.asia
            input = " "
            input = gets.chomp 

            if input == "exit"
                puts "Farewell! Thank you for using Seyyah!"
                abort 
            else 
                input = input.to_i
            end 

            case input 
            when 1
                Asia.india
            when 2 
                Asia.china
            when 3
                Asia.japan
            when 4 
                Asia.thailand
            when 5 
                Asia.indonesia
            when 6 
                Asia.malaysia
            when 7 
                Asia.philippines
            when 8 
                Asia.vietnam
            when 9 
                Asia.south_korea
            when 10 
                Asia.myanmar
            when "exit"
                puts "Farewell! Thank you for using Seyyah!"
                exit 
            else 
                "Sorry ! That's not a valid response!"
            end 

        when 4 
            Countries.australia_pacific
            input = " "
            input = gets.chomp 

            if input == "exit"
                puts "Farewell! Thank you for using Seyyah!"
                abort 
            else 
                input = input.to_i
            end 

            case input 
            when 1
                AustraliaPacific.australia
            when 2 
                AustraliaPacific.new_zealand
            when 3
                AustraliaPacific.french_polynesia
            when 4 
                AustraliaPacific.fiji
            when 5 
                AustraliaPacific.papua_new_guinea
            when 6 
                AustraliaPacific.cook_islands
            when 7 
                AustraliaPacific.vanuatu
            when 8 
                AustraliaPacific.new_caledonia
            when 9 
                AustraliaPacific.samoa
            when 10 
                AustraliaPacific.tonga
            when "exit"
                puts "Farewell! Thank you for using Seyyah!"
                exit 
            else 
                "Sorry ! That's not a valid response!"
            end 

        when 5 
            Countries.caribbean
            input = " "
            input = gets.chomp 

            if input == "exit"
                puts "Farewell! Thank you for using Seyyah!"
                abort 
            else 
                input = input.to_i
            end 

            case input 
            when 1
                Caribbean.cuba
            when 2 
                Caribbean.jamaica
            when 3
                Caribbean.dominican_republic
            when 4 
                Caribbean.puerto_rico
            when 5 
                Caribbean.bahamas
            when 6 
                Caribbean.trinidad_tobago
            when 7 
                Caribbean.virgin_islands
            when 8 
                Caribbean.haiti
            when 9 
                Caribbean.british_virgin_islands
            when 10 
                Caribbean.guadeloupe
            when "exit"
                puts "Farewell! Thank you for using Seyyah!"
                exit 
            else 
                "Sorry ! That's not a valid response!"
            end 

        when 6 
            Countries.c_america
            input = " "
            input = gets.chomp 

            if input == "exit"
                puts "Farewell! Thank you for using Seyyah!"
                abort 
            else 
                input = input.to_i
            end 

            case input 
            when 1
                CentralAmerica.costa_rica
            when 2 
                CentralAmerica.nicaragua
            when 3
                CentralAmerica.guatemala
            when 4 
                CentralAmerica.panama
            when 5 
                CentralAmerica.belize
            when 6 
                CentralAmerica.honduras
            when 7 
                CentralAmerica.el_salvador
            when "exit"
                puts "Farewell! Thank you for using Seyyah!"
                exit 
            else 
                "Sorry ! That's not a valid response!"
            end 

        when 7 
            Countries.europe
            input = " "
            input = gets.chomp 

            if input == "exit"
                puts "Farewell! Thank you for using Seyyah!"
                abort 
            else 
                input = input.to_i
            end 

            case input 
            when 1
                Europe.italy
            when 2 
                Europe.spain
            when 3
                Europe.france
            when 4 
                Europe.england
            when 5 
                Europe.greece
            when 6 
                Europe.germany
            when 7 
                Europe.turkey
            when 8 
                Europe.russia
            when 9 
                Europe.portugal
            when 10 
                Europe.ireland
            when "exit"
                puts "Farewell! Thank you for using Seyyah!"
                exit 
            else 
                "Sorry ! That's not a valid response!"
            end 

        when 8 
            Countries.m_east
            input = " "
            input = gets.chomp 

            if input == "exit"
                puts "Farewell! Thank you for using Seyyah!"
                abort 
            else 
                input = input.to_i
            end 

            case input 
            when 1
                MiddleEast.iran
            when 2 
                MiddleEast.emirates
            when 3
                MiddleEast.israel
            when 4 
                MiddleEast.jordan
            when 5 
                MiddleEast.oman
            when 6 
                MiddleEast.saudi_arabia
            when 7 
                MiddleEast.lebanon
            when 8 
                MiddleEast.qatar
            when 9 
                MiddleEast.bahrain
            when 10 
                MiddleEast.kuwait
            when "exit"
                puts "Farewell! Thank you for using Seyyah!"
                exit 
            else 
                "Sorry ! That's not a valid response!"
            end 

        when 9 
            Countries.n_america
            input = " "
            input = gets.chomp 

            if input == "exit"
                puts "Farewell! Thank you for using Seyyah!"
                abort 
            else 
                input = input.to_i
            end 

            case input 
            when 1
                NorthAmerica.usa
            when 2 
                NorthAmerica.canada
            when 3
                NorthAmerica.mexico
            when "exit"
                puts "Farewell! Thank you for using Seyyah!"
                exit 
            else 
                "Sorry ! That's not a valid response!"
            end 

        when 10 
            Countries.s_america
            input = " "
            input = gets.chomp 

            if input == "exit"
                puts "Farewell! Thank you for using Seyyah!"
                abort 
            else 
                input = input.to_i
            end 

            case input 
            when 1
                SouthAmerica.brazil
            when 2 
                SouthAmerica.argentina
            when 3
                SouthAmerica.peru
            when 4 
                SouthAmerica.chile
            when 5 
                SouthAmerica.colombia
            when 6 
                SouthAmerica.ecuador
            when 7 
                SouthAmerica.bolivia
            when 8 
                SouthAmerica.venezuela
            when 9 
                SouthAmerica.uruguay
            when 10 
                SouthAmerica.paraguay
            when "exit"
                puts "Farewell! Thank you for using Seyyah!"
                exit 
            else 
                "Sorry ! That's not a valid response!"
            end 

        when "exit"
            puts "Farewell! Thank you for using Seyyah!"
            abort
        else 
            "Sorry ! That's not a valid input. Please try again!"
        end
    end 
    
    #def repeat 
        #"Would you like to learn about another country?"
    #end 

    #def loading
        #"----------LOADING----------"
    #end 
end 
end 

puts Seyyah::CLI.new.start 