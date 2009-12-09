class User < ActiveRecord::Base
  has_attached_file :photo
  devise :authenticatable, :authentication_keys => [:username]
  
  attr_accessible :username, :password, :password_confirmation, :photo
  validates_confirmation_of :password, :on => :create
  validates_presence_of :username, :password
end
