def make_snippet(input)
  words = input.split(" ")
  if words.length <= 5
    input 
  else
    limited_list = []
    for i in 0..4
      limited_list. << words[i]
    end 
      output = limited_list.join(" ")
    return output + " ..."
  end
end
