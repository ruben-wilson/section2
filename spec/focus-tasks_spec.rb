require "focus-tasks.rb"

RSpec.describe FocusTasks do
  it "outputs 1 tasks in correct format when show_tasks is called" do
    tasks = FocusTasks.new("do washing up")
    expect(tasks.show_tasks).to eq "1. do washing up"
  end
  it "outputs two task in correct format when show_tasks is called" do
    tasks = FocusTasks.new("do washing up, walk dog")
    expect(tasks.show_tasks).to eq "1. do washing up, 2. walk dog"
  end
  it "outputs four task in correct format when show_tasks is called" do
    tasks = FocusTasks.new("do washing up, walk dog, meet gf, do shopping")
    expect(tasks.show_tasks).to eq "1. do washing up, 2. walk dog, 3. meet gf, 4. do shopping"
  end
  it "deletes first task when remove(1) is called" do
    tasks = FocusTasks.new("do washing up, walk dog, meet gf, do shopping")
    expect(tasks.remove(1)).to eq "1. walk dog, 2. meet gf, 3. do shopping"
  end
  it "deletes last task when remove(4) is called" do
    tasks = FocusTasks.new("do washing up, walk dog, meet gf, do shopping")
    expect(tasks.remove(4)).to eq "1. do washing up, 2. walk dog, 3. meet gf"
  end
  it "deletes middle task when remove(2) is called" do
    tasks = FocusTasks.new("do washing up, walk dog, meet gf, do shopping")
    expect(tasks.remove(2)).to eq "1. do washing up, 2. meet gf, 3. do shopping"
  end
  it "deletes two task when remove(1) and remove(2) is called" do
    tasks = FocusTasks.new("do washing up, walk dog, meet gf, do shopping")
    tasks.remove(2)
    expect(tasks.remove(1)).to eq "1. meet gf, 2. do shopping"
  end
end
                