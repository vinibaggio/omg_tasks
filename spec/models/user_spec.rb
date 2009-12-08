require 'spec_helper'

describe User do
  
  should_have_attached_file :photo
  should_validate_confirmation_of :password
  should_validate_presence_of :username, :password
  
  # check how to test devise
end
