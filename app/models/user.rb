class User < ActiveRecord::Base
  has_attached_file :photo
  devise :authenticatable, :authentication_keys => [:username]
  
  attr_accessible :username, :password, :password_confirmation, :photo
  validates_confirmation_of :password, :on => :create
  validates_presence_of :username, :password
  validates_format_of :username, :with => /^[\w\d]+$/, :on => :create, :message => "is invalid", :allow_blank => false, :allow_nil => false
  
  def to_param
    username.to_param
  end
end
