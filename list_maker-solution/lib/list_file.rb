module ListMaker
  class ListFile

    @@filename = 'lm_list.txt'

    def initialize
      # locate list file in APP_ROOT
      @filepath = File.join(APP_ROOT, @@filename)
      if File.exist?(@filepath)
        # confirm that file is readable and writable
        if !File.readable?(@filepath)
          abort("List file exists but is not readable.")
        elsif !File.writable?(@filepath)
          abort("List file exists but is not writable.")
        end
      else
        # or create a new file in APP_ROOT
        File.write(@filepath, '')
        if !File.exists?(@filepath)
          abort("List file does not exist and could not be created.")
        end
      end
      # if success, return self, otherwise exit program
      self
    end

    # Read from list file and display numbered list
    def view
      puts "\nView List\n\n".upcase
      # Use File.new/open in read-only mode
      file = File.new(@filepath, 'r')
      file.each_line do |line|
        puts "#{file.lineno}: #{line}"
      end
      if file.lineno == 0
        puts "<< The list is empty. >>"
      end
      file.close
    end
    
    # Add item to the end of the list file
    def add
      puts "\nAdd a List Item\n\n".upcase
      # Use File.new/open in append mode
      puts "Enter the new list item and hit return."
      print "> "
      # Does not call #chomp, keep the line return
      new_item = gets
      File.open(@filepath, 'a') do |file|
        file << new_item
      end
      puts "List item added."
    end

    # Edit list item with the given position number
    # Prompts for replacement text
    def edit(position)
      index = position.to_i - 1
      puts "\nEdit a List Item\n\n".upcase
      # get an array of all lines
      lines = File.readlines(@filepath)
      current_line = lines[index]
      if current_line.nil?
        puts "Invalid item position."
        return
      end
      # Show current text and ask user to provide new text
      puts "Enter the new text and hit return."
      puts "#{position}: #{current_line}"
      print "> "
      # Does not call #chomp, keep the line return
      new_line = gets
      # edit item, join the array, write to file
      lines[index] = new_line
      data = lines.join
      File.write(@filepath, data)
      puts "List item updated."
    end
    
    # Delete list item with the given position number
    def delete(position)
      index = position.to_i - 1
      puts "\nDelete a List Item\n\n".upcase
      # get an array of all lines
      lines = File.readlines(@filepath)
      current_line = lines[index]
      if current_line.nil?
        puts "Invalid item position."
        return
      end
      # delete item, join the array, write to file
      lines.delete_at(index)
      data = lines.join
      File.write(@filepath, data)
      puts "List item deleted."
    end
    
  end
end
