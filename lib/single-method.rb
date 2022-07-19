def reading_time(string)
  word_count = string.split(" ").length
  minutes = word_count.to_f / 200.00
  
  
  return "The reading time for this text is #{minutes} minute(s)." 
end

=begin
Design Method 

The name of the method.
What parameters it takes, their names and data types.
What it returns and the data type of that value.
Any other side effects it might have.

name = reading time 

parameters = text as a string 

return = string with interpolation for interger to
display time 
=end

