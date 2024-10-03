# Class for each restaurant in the list
module RFinder
  class Restaurant

    attr_accessor :name, :cuisine, :price

    def self.new_from_questions
      args = {}

      print "Restaurant name: "
      args[:name] = gets.chomp.strip

      print "Cuisine type: "
      args[:cuisine] = gets.chomp.strip

      print "Average price: $"
      args[:price] = gets.chomp.strip.delete('$')

      self.new(args)
    end

    def initialize(args={})
      @name    = args[:name]    || ""
      @cuisine = args[:cuisine] || ""
      @price   = args[:price]   || ""
    end
  
  end
end
