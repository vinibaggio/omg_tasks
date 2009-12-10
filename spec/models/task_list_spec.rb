require 'spec_helper'

describe TaskList do
  should_have_many :tasks
  should_belong_to :user
end
