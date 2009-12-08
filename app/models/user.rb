class User < ActiveRecord::Base
  has_attached_file :photo
  devise :authenticatable, :authentication_keys => [:username]
  
  attr_accessible :username, :password, :password_confirmation
end
