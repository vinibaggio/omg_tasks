require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ApplicationHelper do
  it "should show user logged in details when user logged in" do
    helper.show_logged_user_bar.should == /vinibaggio/
  end
  
  it "should show user logged in details when user is not logged in" do
    helper.show_logged_user_bar.should be_nil
  end
end