class Watch < ActiveRecord::Base
  belongs_to :user, :task_list
end
