# Class for controling user interaction
# All actions are passed off to the Guide
module RFinder
  class Controller

    @@valid_actions = ['list', 'find', 'add', 'help', 'quit']

    def launch!
      introduction
      # input action loop
      loop do
        action, args = get_action
        break if action == 'quit'
        do_action(action, args)
      end
  		conclusion
    end

    private

    def introduction
      puts "\n\n<<< Welcome to the Restaurant Finder >>>\n\n"
      puts "This is an interactive guide to help you find the food you crave.\n\n"
    end

  	def conclusion
    	puts "\n<<< Goodbye and Bon Appetit! >>>\n\n\n"
  	end
	
    def get_action
      action = nil
      # Keep asking for user input until we get a valid action
      until @@valid_actions.include?(action)
        puts "\nActions: " + @@valid_actions.join(", ")
        print "> "
        response = gets.chomp
        args = response.downcase.strip.split(' ')
        action = args.shift
      end
      [action, args]
    end
  
    def do_action(action, args=[])
      case action
      when 'list'
        puts "Coming soon: list"
      when 'find'
        puts "Coming soon: find"
      when 'add'
        puts "Coming soon: add"
      when 'help'
        puts "Coming soon: help"
      else
        puts "\nI don't understand that command.\n\n"
      end
    end

  end
end
