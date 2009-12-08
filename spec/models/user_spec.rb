require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :username => "value for username",
      :photo_file_name => "value for photo_file_name",
      :photo_content_type => "value for photo_content_type",
      :photo_file_size => 1,
      :photo_updated_at => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
end
