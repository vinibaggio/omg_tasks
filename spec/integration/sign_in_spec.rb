require 'spec_helper'

describe "As an user I want to sign in in order to create tasks" do
  before(:all) do
    @user = create_user
  end
  
  after(:all) do
    @user.destroy
  end
  
  example "signed in with success" do

    do_login "vinibaggio", "password"
    
    page.should contain("Signed in successfully")
    should_be_on root_path
    
  end
  
  example "with wrong password" do
    
    do_login "vinibaggio", "wrong_password"
    
    page.should contain("Invalid username or password.")
    should_be_on new_user_session_path
    
  end
  
  private
  def do_login(user, password)
    visit new_user_session_path
    
    fill_in "Username", :with => user
    fill_in "Password", :with => password
    click_button "Sign in"
  end
end