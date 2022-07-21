class FocusTasks 
  
  def initialize(tasks)#initalize with a string of all task 
    p tasks
    @tasks = tasks.split(",")
  end

  def show_tasks
    #will dislapy all tasks in task array with a number to use
    #to delete task
    num = 0
    output = []
    @tasks = @tasks.each{|task|
      if task[0] == " "
        task[0] = ""
      end
    }
    @tasks.each{|task|
      output << "#{num += 1}. #{task}"
    }
     output.join(", ")
  end

  def remove(remove_this)
    @tasks.delete_at(remove_this - 1)
    show_tasks()
  end 

end

tasks = FocusTasks.new("do washing up, walk dog")
tasks.show_tasks

