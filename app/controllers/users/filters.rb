module Users::Filters
  
  def acts_as_user(options={})
    before_filter :find_user_from_session, :find_requested_user
    
    include ControllerMethods 
  end
  
  def acts_as_current_user(options={})
    # fetch the user first, then verify if the user can access
    prepend_before_filter :find_user_from_session, :current_user_only, :find_requested_user
    
    include ControllerMethods
  end
  
  module ControllerMethods
    protected

    def find_user_from_session
      if current_user.nil?
        flash[:error] = "You must be logged in to proceed"
        redirect_to new_user_session_path
        false
      else
        @current_user ||= current_user
      end
    end
    
    def current_user_only
      unless @current_user.username == params[:user_id]
        flash[:error] = "You are not allowed here"
        redirect_to :back
        false
      end
    end
    
    def find_requested_user
      @requested_user ||= User.find_by_username!(params[:user_id])
    end
    
  end
end