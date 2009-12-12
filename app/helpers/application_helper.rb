module ApplicationHelper
  
  def display_user_bar
    if current_user
      "logged in as " +
        link_to(current_user.username, user_path(current_user)) +
        " - " +
        link_to("logout", destroy_user_session_path)
    else
      link_to "login", new_user_session_path
    end
  end
  
  def requested_eql_current?
    
  end
end
