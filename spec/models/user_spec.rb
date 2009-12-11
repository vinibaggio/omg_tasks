require 'spec_helper'

describe User do
  
  should_have_attached_file :photo
  should_have_many :task_lists, :dependent => :destroy
  
  should_validate_confirmation_of :password
  should_validate_presence_of :password
  should_allow_values_for :username, "vinibaggio", "blablebli1", "bla123bla", :allow_blank => false, :allow_nil => false
  should_not_allow_values_for :username, "   ", "ola!"
  
  # check how to test devise
  
  it "should use username as a parameter to construct urls" do
    user = User.new({:username => "vinibaggio"})
    user.to_param.should == user.username
  end
end
