module Users::Filters
  def acts_as_user(options={})
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
      @current_user ||= User.find(session[:user_id])
    end
  end
end