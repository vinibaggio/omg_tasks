class Users::TaskListsController < InheritedResources::Base
  acts_as_current_user
  actions :all, :except => [:update]
  
end
