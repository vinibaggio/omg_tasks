class Users::SharedListsController < InheritedResources::Base
  
  actions :only => [:index]
  
  acts_as_user(:collection_name => 'task_lists')
  
  def collection
    end_of_association_chain.shared
  end
  
end
