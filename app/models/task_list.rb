class TaskList < ActiveRecord::Base
  has_many :tasks
  belongs_to :user
  
  named_scope :shared, :conditions => {:shared => true}
end
