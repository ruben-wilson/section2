require "Todo2.rb"
require "TodoList2.rb"

RSpec.describe do
  describe "adds a todo to todolist" do
    it "returns array with todo object presenet" do
      test = TodoList.new()
      todo = Todo.new("do a thing")
      test.add(todo)
      expect(test.incomplete).to eq [todo]
    end 
  end 
  it "returns only incompleted todos from @todolist" do
    test = TodoList.new()
    todo = Todo.new("in complete")
    todo1 = Todo.new("complete")
    todo.mark_done!
    test.add(todo)
    test.add(todo1)
    expect(test.incomplete).to eq [todo1]
  end 
    it "returns only completed todos from @todolist" do
    test = TodoList.new()
    todo = Todo.new("do things")
    todo1 = Todo.new("complete")
    todo.mark_done!
    test.add(todo)
    test.add(todo1)
    expect(test.complete).to eq [todo]
  end
    it "marks all todos as completed" do
    test = TodoList.new()
    todo = Todo.new("do things")
    todo1 = Todo.new("complete")
    todo2 = Todo.new("do more")
    test.add(todo)
    test.add(todo2)
    test.add(todo1)

    expect(test.give_up!).to eq [todo, todo2, todo1]
  end 
end 