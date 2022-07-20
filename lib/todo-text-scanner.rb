def text_scanner(text)
  it_is_a_todo = text.split(" ").include?("#Todo") || text.split(" ").include?("#todo")
  if it_is_a_todo 
    "yes this is a todo"
  else
    "no this is not"
  end
end



=begin
  The name of the method.
What parameters it takes, their names and data types.
What it returns and the data type of that value.
Any other side effects it might have.

method name:
  - text_scanner
takes :
  - text as a string 
returns :
  - a boolean value a string iether "yes" || "no"
side effects:
  - code is less 'dry' as repeated same statment twice
    maybe some sort of array comparison method could fix this!


=end 

