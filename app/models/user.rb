class User < ActiveRecord::Base
  has_attached_file :photo
  devise :authenticatable, :authentication_keys => [:username]
  
  attr_accessible :username, :password, :password_confirmation
  validates_confirmation_of :password, :on => :create
end
