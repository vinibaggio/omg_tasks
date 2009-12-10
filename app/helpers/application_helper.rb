module ApplicationHelper
  
  def show_user_bar
    if @current_user && @current_user.respond_to?(:username)
      "logged in as #{@current_user.username} - " + link_to("logout", destroy_user_session_path)
    else
      link_to "login", new_user_session_path
    end
  end
end
