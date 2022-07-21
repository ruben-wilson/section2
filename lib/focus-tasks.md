# focus-tasks Design recipe 

## Describe the problem
_puts the user story and any other useful info you may have._
As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.
## Describe the class interface

_include the initalizer and public methods with all pramaters and return values + data types._

```ruby
# EXAMPLE
Class FocusTasks 
  def initalize(tasks)#initalize with a string of all task 
  end

  def show_tasks
    #will dislapy all tasks in task array with a number to use
    #to delete task
  end

  def remove() #input as interger what task to remove 
    #will out put array with array removed 
  end 

end
```

## create examples as tests  
_make a list of examples of how the program should work in different situations._

```ruby
# EXAMPLE
#1
tasks = FocusTasks.new("do washing up, walk dog, meet gf, do shopping")
tasks.show_tasks # => 1.  do washing up
                 # => 2.  walk dog 
                 # => 3.  meet gf
                 # => 4.  do shopping
#2
tasks = FocusTasks.new("do washing up, walk dog, meet gf, do shopping")
tasks.show_tasks # => 1.  do washing up
                 # => 2.  walk dog 
                 # => 3.  meet gf
                 # => 4.  do shopping

tasks.remove(1)  # => 1.  walk dog 
                 # => 2.  meet gf
                 # => 3.  do shopping

#3
tasks = FocusTasks.new("do washing up, walk dog, meet gf, do shopping")
tasks.show_tasks # => 1.  do washing up
                 # => 2.  walk dog 
                 # => 3.  meet gf
                 # => 4.  do shopping

tasks.remove(1)  # => 1.  walk dog 
                 # => 2.  meet gf
                 # => 3.  do shopping

tasks.remove(2)  # => 1.  walk dog 
                 # => 2.  do shopping
                
```


