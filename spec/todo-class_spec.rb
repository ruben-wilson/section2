require "todo-class.rb"

RSpec.describe TodoClass do 
  it "outputs one todo when only one todo added" do
    newlist = TodoClass.new
    newlist.addTodo("go shops")
    expect(newlist.output).to eq "go shops"
  end
   it "outputs one todo when only one todo added" do
    newlist = TodoClass.new
    newlist.addTodo("go shops")
    newlist.addTodo("go doctors")
    expect(newlist.output).to eq "go shops, go doctors"
  end
   it "outputs one todo when only one todo added" do
    newlist = TodoClass.new
    newlist.addTodo(" ")
    expect(newlist.output).to eq " "
   end
  
end
    