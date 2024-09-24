require_relative 'dice'

class DiceTwenty < Dice

  def sides
    20
  end

	def display
	  "*#{super}* #{highlight_text}"
  end

  private

  def highlight_text
    case value
    when 1
      "- Certain Failure!"
    when 20
      "- Critical Success!"
    else
      ""
    end
  end

end
