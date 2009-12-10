require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ApplicationHelper do
  
  it "should show user logged in details when user logged in" do
    assigns[:current_user] = User.new({:username => "vinibaggio"})
    helper.display_user_bar.include?("logout").should be_true
  end
  
  it "should show user logged in details when user is not logged in" do
    assigns[:current_user] = nil
    helper.display_user_bar.include?("login").should be_true
  end
end