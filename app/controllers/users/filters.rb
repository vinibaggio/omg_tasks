module Users::Filters
  def acts_as_user(options={})
    # layout "user"
    before_filter :find_user_from_session
    defaults options.reverse_merge(:route_prefix => nil)
    
    include ControllerMethods
      
  end
  
  module ControllerMethods
    protected
    def begin_of_association_chain
      @current_user
    end

    def find_user_from_session
      user_id = session[:user_id]
      unless user_id
        flash[:error] = "You must be logged in to proceed"
        redirect_to new_user_session_path
        false
      else
        @current_user ||= User.find(user_id)
      end
    end
  end
end