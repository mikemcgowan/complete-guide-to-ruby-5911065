require 'csv'

# Class for the restaurant guide behaviors
# Responds to: list, find, add, help
module RFinder
  class Guide

    @@storage_filename = 'restaurants.csv'

    def initialize
      # find storage file; set @storage_path
      initialize_storage_file
      # if initialized without error, return self
      self
    rescue => e
      abort("Fatal error: #{e.message}")
    end

    def list
      puts "Coming soon: list"
    end

    def find
      puts "Coming soon: find"
    end

    def add
      puts "Coming soon: add"
    end

    def help
      puts "Coming soon: help"
    end

    private

    def initialize_storage_file
      # locate storage file in APP_ROOT
      @storage_path = File.join(APP_ROOT, @@storage_filename)
      unless File.exist?(@storage_path)
        create_storage_file
      end
      unless storage_file_usable?
        raise "Storage file is not usable."
      end
    end

    def create_storage_file
      headers = ["Name", "Cuisine, Price"]
      initial_content = headers.join(',') + "\n"
      File.write(@storage_path, initial_content)
    end

    def storage_file_usable?
      return false unless @storage_path
      return false unless File.exist?(@storage_path)
      return false unless File.readable?(@storage_path)
      return false unless File.writable?(@storage_path)
      return true
    end

  end
end
