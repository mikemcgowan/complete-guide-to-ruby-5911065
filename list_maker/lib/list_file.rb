module ListMaker
  class ListFile

    @@filename = 'lm_list.txt'

    def initialize
      # locate list file in APP_ROOT
      # confirm that file is readable and writable
      # or create a new file in APP_ROOT
      # if success, return self, otherwise exit program
      self
    end

    # Read from list file and display numbered list
    def view
    end
    
    # Add item to the end of the list file
    def add
    end

    # Edit list item with the given position number
    # Prompts for replacement text
    def edit(position)
    end
    
    # Delete list item with the given position number
    def delete(position)
    end
    
  end
end
