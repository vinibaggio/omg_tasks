require "spec_helper"

describe "As an user I want to see people's profile pages" do
  before(:all) do
    @user = create_user
    @other_user = create_user(:username => "otheruser")
  end
  
  after(:all) do
    @user.destroy
    @other_user.destroy
  end
  
  example "view user's profile" do
    do_login(@user.username, @user.password)
    visit user_path(@other_user)
    page.should contain("User's profile: otheruser")
  end
  
  example "view user's public tasks when logged in" do
    do_login(@user.username, @user.password)
    visit user_path(@other_user)
    click_link "User's shared lists"
    should_be_on user_shared_lists_path(@other_user)
    page.should contain("Displaying otheruser's shared lists")
  end
  
  example "view user's public tasks when not logged in" do
    visit user_path(@other_user)
    click_link "User's shared lists"
    should_be_on new_user_session_path
    page.should contain("You must be logged in to proceed")
  end
  
  # Add more...
end