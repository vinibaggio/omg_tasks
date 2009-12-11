require 'spec_helper'

describe TaskList do
  should_have_many :tasks, :dependent => :destroy
  should_belong_to :user
  
  should_validate_presence_of :title
  
  before(:all) do
    @public_list = TaskList.create({:title => "A task list", :shared => true})
    @private_list = TaskList.create({:title => "A task list", :shared => false})
  end
  
  after(:all) do
    TaskList.delete_all
  end
  
  context "with shared lists" do
    it "should include a public list" do
      TaskList.shared.should include(@public_list)
    end
  
    it "should not include a private list" do
      TaskList.shared.should_not include(@private_list)
    end
  end
end
