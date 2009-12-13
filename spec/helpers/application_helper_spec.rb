require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ApplicationHelper do
  
  include Devise::TestHelpers
  
  before(:all) do 
    @user = User.new({:username => "vinibaggio"})
  end
  
  it "should show user logged in details when user logged in" do
    helper.stub!(:current_user).and_return(@user)
    helper.display_user_bar.should include("logout")
  end
  
  it "should show user logged in details when user is not logged in" do
    helper.stub!(:current_user).and_return(nil)
    helper.display_user_bar.should include("login")
  end

end