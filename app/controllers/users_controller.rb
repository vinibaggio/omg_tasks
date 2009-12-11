class UsersController < InheritedResources::Base
  actions :create, :new
  
  def show
    @user = User.find_by_username!(params[:id])
#    show!
  end
  
  def create
    create! do |format|
      format.html { redirect_to root_path }
    end
  end
end
