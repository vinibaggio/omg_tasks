require 'spec_helper'

describe Watch do
  should_belong_to :user
  should_belong_to :task_list
end
