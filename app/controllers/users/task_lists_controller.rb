class Users::TaskListsController < InheritedResources::Base
  acts_as_current_user
  belongs_to :user, :finder => :find_by_username!
  actions :all, :except => [:update]
  
  def new
    @task_list = TaskList.new
    2.times {@task_list.tasks.build}
  end
  
  def create
    create! do |success, failure|
      success.html { redirect_to user_task_lists_path(@current_user) }
    end
  end
  
end
