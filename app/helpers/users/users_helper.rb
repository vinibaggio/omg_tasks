module Users::UsersHelper
  def requested_eql_current?
    return false if @current_user.nil? or @requested_user.nil?
    @current_user.eql?(@requested_user)
  end
end