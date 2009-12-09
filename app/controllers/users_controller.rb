class UsersController < InheritedResources::Base
  actions :create, :new
  
  def create
    create! do |format|
      format.html { redirect_to root_path }
    end
  end
end
