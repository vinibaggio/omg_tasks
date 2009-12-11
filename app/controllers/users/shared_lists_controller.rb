class Users::SharedListsController < InheritedResources::Base
  belongs_to :user, :finder => :find_by_username!
  
  actions :only => [:index]
  
  acts_as_user
  
end
