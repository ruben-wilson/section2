# todo-class Design recipe 

## Describe the problem

_puts the user story and any other useful info you may have._
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

## Describe the class interface

_include the initalizer and public methods with all pramaters and return values + data types._

```ruby
# EXAMPLE
class TodoClass
  def initalize 
   #=> with an empty array to store todos in 
   #=> @todo = []
  end
  def addTodo(todo) #a todo represented as a string 
    #=> 
  end

  def output # takes no inputs
    #=> iterates thru @todo array and outputs each todo
  end
end 
```

## create examples as tests 
 
_make a list of examples of how the program should work in different situations._

```ruby
# EXAMPLE
#1
newlist = TodoClass.new
newlist.addTodo("go shops")
newlist.output # => "go shops"
#2
newlist = TodoClass.new
newlist.addTodo("go shops")
newlist.addTodo("go doctors")
newlist.output # => "go shops, go doctors"
#3
newlist = TodoClass.new
newlist.addTodo(" ")
newlist.output # => " "
#4
newlist = TodoClass.new
newlist.addTodo()
expect error
#4
newlist = TodoClass.new
newlist.addTodo(1)
expect  error 
```

