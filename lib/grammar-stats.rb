class GrammarStats
  def initialize
    @checked_correct = 0.00
    @checked_wrong = 0.00
  end

  def check(text)
    last_charater_is_correct = [".", "!", "?"].include?(text[-1])
    first_is_capital = text[0] == text[0].capitalize
    if last_charater_is_correct && first_is_capital
      @checked_correct += 1
      return true
    else 
      @checked_wrong += 1
     return false
   end
  end

  def percentage_good
    if @checked_wrong == 0
      0
    else 
     correct = @checked_correct
     wrong = @checked_wrong
     total = @checked_correct + @checked_wrong
     (correct / total) * 10
      
    
    end
  end
end