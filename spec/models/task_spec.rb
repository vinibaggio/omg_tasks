require 'spec_helper'

describe Task do
  should_belong_to :task_list
end
