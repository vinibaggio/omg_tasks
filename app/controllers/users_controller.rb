class UsersController < InheritedResources::Base
  actions :create, :new, :show
  
  def create
    create! do |format|
      format.html { redirect_to root_path }
    end
  end
end
