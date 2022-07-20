def text_checker(text)
  last_charater_is_correct = [".", "!", "?"].include?(text[-1])
  first_is_capital = text[0] == text[0].capitalize
  if last_charater_is_correct && first_is_capital
    return "well written text!"
  else 
    return "bad grammar!"
  end
end