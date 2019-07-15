~~~~~CODE WALKTHROUGH~~~~~
Seyyah 
    --> Regions of the World
        --> Region Description & Top 10 Countries by Region 
            --> Country Description & Top 10 Cities by Country 

*Seyyah means traveler in Turkish. I named my program this because it was inspired by my travels to Istanbul and the people I met there. 

*Originally my code was supposed to include a further level of scraping that was going to return the top destinations in each country and not just the top 10 countries, but also all the countries for each region. However, this turned out to be too much scraping and over 50 webpages to scrape data from, so that was abandoned and will be added in a future version.

* .lib/regions.rb
    > This file contains the scraping method for the initial user choice. A single class method is contained in this class. 
    > I chose to make an object: Regions that would scrape the initial data from the website and I only put one class method in this object in order to separate the objects by type/functionality. 
    > I chose to use a class method so that I can call on it in the CLI class using: Regions.regions. The name is a little less than creative, but it was the most practical name as it clearly described the function. 
    > The self.regions method takes in a single argument of a url which is then assigned to a variable html = open(url) and the next line contains a variable doc which calls on Nokogiri::HTML to scrape the data from the url assigned to html. 
    > The next line uses doc.css which scrapes data from the css selectors on the url and uses an enumerator on each item to output the regions in a formatted manner. I used a counter as I had a hard time getting the .each_with_index enumerator to work and made sure the counter started with 0 and was incremented with each iteration over the webpage. This outputs the regions in a numbered list using string interpolation. 

* .lib/countries.rb
    > This file contains the methods that give the user the information about the region and outputs the top ten countries in the selected region. 
    > I chose to make a single class Countries to get information about the selected region and return in a formatted manner: Welcome to REGION! and the description of that region. 
    > For obtaining the region info, I chose to use a single class method that could be called upon in another class or method as necessary by using Countries.get_region_info with an argument of a url. I used the same logic with the html and doc variables and then I assigned a variable 'greeter' to the information scraped from the website which contains the welcome message. The description variable is assigned to the summary of the region scraped from the website. An enumerator was unnecessary as all that was needed for this method was a message using string interpolation to output : WELCOME TO REGION! + DESCRIPTION in a formatted manner. 
    > The second class obtains the countries in that specific region and it uses the same logic as the previous method to get the regions in an ordered list. A custom message is printed to let the user know that the list of countries is of the top ten countries in the region. I used an enumerator again to iterate over the list of countries, but used a counter as the website had grouped together all the countries and cities. The enumerator stops when the counter reaches 10. 
    > This class became extended as it contains several different class methods that pertain to each region. For example, the method: 
        def self.europe
            self.get_region_info("https://lonelyplanet.com/europe")
            self.get_countries("https://lonelyplanet.com/europe")
        end 
    The self.europe class method calls on two other class methods and passes the url for the particular region. 
    > It just occurred to me that I can save the url in a variable called url and then pass that as the argument in each method rather than writing the url twice and that way my code would look neater. I will work on that when refactoring my code. 

* .lib/destination.rb
    > This file contains the methods necessary to get the information about the selected country. All the information about the country is contained in this class. 
    > In the future I plan to extend this class to include a list of the top cities and also a list of the top tourist attractions as well as the average cost for those attractions. 
    > The first class method, self.country_desc(url) does the same as the first class method in the Regions class. It scrapes the url provided to say "WELCOME TO COUNTRY! + DESCRIPTION". 
    > The country_desc class method is then extended to include a more complete description ~ a few paragraphs long ~ about the country and summarizes the key aspects of that country. 
    > This method then thanks the user for using the program and this is the end of that program.  
    > self.get_dest is commented out because that feature was put on hold for now as the html was getting difficult to scrape. 
    > The next 10 classes contained in this file are for the specific regions. 
        class Europe 
            def self.turkey
                Destinations.country_desc(url)
            end 
        end 
        Europe.turkey 
    > Each class contains one method for each top country in the region and takes in the url for that specific country. I split each item like this because of the CLI interface to make it simpler to call each item and much more clear to understand. It is easier to understand what is going on if you call Europe.turkey b/c you can easily see you are calling REGION.country. 

* /lib/cli.rb 
    > This file contains the information the user will see and interact with. 
    > I started with one class, class CLI and the initial start method contains the user interface necessary to run the program. 
    > NOTE: I know that this file is a bit disorganized and I plan to start refactoring it but I ran out of time to attempt to organize it. 
    > The main CLI information is contained in the user_interface instance method. The program starts with welcoming the user to the program and asking the user to choose one of the following regions by entering the corresponding number. The method begins by calling on Regions.regions which scrapes the website to get the enumerated numbered list of regions. 
    > The method continues to get the user input and if the user's input == "exit", then the program will thank the user for using Seyyah and will abort the program. If the input != "exit", then the input will be converted to an integer for the next stage with input.to_i conversion method. 
    > We move on to a series of nested case statements which I hope to refactor later on as it was a small mess to deal with but I continuously got errors and I ran out of time. 
    > The case statements start with the integer input and looks as follows: 
        case input 
        when 7 
            Countries.Europe
            input = gets.chomp 
            case input 
            when 7 
                Europe.turkey 
            end 
        end 
    > The first case statement will compare the user's input to then call upon the corresponding Countries.REGION class. From there, the user will select a country by entering a number and then another case statement will compare the input after converting it to an integer or exiting the program, and return the corresponding REGION.country class and class method which will display a detailed summary of the country. 
    > If at any time the user enters a number greater than 10 or a string that is != "exit", the user will receive a message stating that that is not a valid input and they should try again. 
    > The end of this class contains the method: Seyyah::CLI.new.start
    This method calls on the module encapsulating the whole program, the class CLI, a new CLI and the start instance method. 
    
* .bin/teach_me
    > The first line in the environment file is the shebang line which makes your terminal recognize this file as a ruby file even without the extension. 
    > Here you should require bundler and seyyah. 
    > You also call on Seyyah::CLI.new and begin your method. 
    > To run your program , you cd into the directory your project is in and then you run your environment file: 
        bin/teach_me
    This will run your CLI.

