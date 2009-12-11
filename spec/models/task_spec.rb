require 'spec_helper'

describe Task do
  should_belong_to :task_list
  
  should_validate_presence_of :title, :description
end
