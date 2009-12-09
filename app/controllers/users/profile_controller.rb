class Users::ProfileController < InheritedResources::Base
  acts_as_user
end