require 'spec_helper'

describe Watch do
  should_belong_to :user, :task_list
end
