require "focus-tasks.rb"

RSpec.describe FocusTasks do
  it "outputs inputed tasks in correct format when show_tasks is called" do
    tasks = FocusTasks.new
    expect(tasks.show_tasks).to eq "1. do washing up"
  end
end
                