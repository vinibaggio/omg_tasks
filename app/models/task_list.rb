class TaskList < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  belongs_to :user
  
  named_scope :shared, :conditions => {:shared => true}
  
  validates_presence_of :title
  
  accepts_nested_attributes_for :tasks
end
