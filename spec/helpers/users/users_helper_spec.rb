require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Users::UsersHelper do
  
  before(:all) do
    @user_a = User.new(:username => "123")
    @user_b = User.new(:username => "abc")
  end
  
  context "when requester is not the same as the logged user" do
    
    it "should tell that requested isn't equal to current" do
      assigns[:current_user] = @user_a
      assigns[:requested_user] = @user_b
      helper.requested_eql_current?.should be_false
    end
    
  end
  
  context "when requester is the same as the logged user" do
    
    it "should tell that requested equal to current" do
      assigns[:current_user] = @user_a
      assigns[:requested_user] = @user_a
      helper.requested_eql_current?.should be_true
    end
    
  end
  
  it "should tell that requested isn't equal if current user is no one" do
    assigns[:current_user] = nil
    assigns[:requested_user] = @user_a
    helper.requested_eql_current?.should be_false
  end
  
  it "should tell that requested isn't equal if requested user is no one" do
    assigns[:current_user] = @user_a
    assigns[:requested_user] = nil
    helper.requested_eql_current?.should be_false
  end
end
