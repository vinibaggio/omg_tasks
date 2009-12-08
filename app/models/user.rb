class User < ActiveRecord::Base
  has_attached_file :photo
  devise :all, :authentication_keys => [:username]
end
