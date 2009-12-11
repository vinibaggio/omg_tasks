class Users::SharedListsController < InheritedResources::Base
  actions :only => [:index]
  acts_as_user
  
  def index
    @user = User.find_by_username!(params[:user_id])
    @shared_lists = @user.task_lists.shared
  end
  
end
