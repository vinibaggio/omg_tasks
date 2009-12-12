class Users::WatchesController < InheritedResources::Base
  acts_as_current_user
  actions :index, :create, :destroy
  
  def create
    create! do |success, failure|
      success.html do
        flash[:notice] = 'Added task list to watchlist'
        redirect_to :action => 'index'
      end
    end
  end
end
