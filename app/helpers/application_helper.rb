module ApplicationHelper
  
  def display_user_bar
    if current_user
      "logged in as #{current_user.username} - " + link_to("logout", destroy_user_session_path)
    else
      link_to "login", new_user_session_path
    end
  end
end
