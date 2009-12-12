require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Users::UsersHelper do
  context "when requester is not the same as the logged user" do
    
    it "should tell that requested isn't equal to current" do
      helper.requested_eql_current?.should be_false
    end
    
  end
  
  context "when requester is the same as the logged user" do
    
    it "should tell that requested equal to current" do
      helper.requested_eql_current?.should be_true
    end
    
  end
end
