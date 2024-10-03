# Class for each restaurant in the list
module RFinder
  class Restaurant

    attr_accessor :name, :cuisine, :price

    def initialize(args={})
      @name    = args[:name]    || ""
      @cuisine = args[:cuisine] || ""
      @price   = args[:price]   || ""
    end
  
  end
end
