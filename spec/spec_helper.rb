# This file is copied to ~/spec when you run 'ruby script/generate rspec'
# from the project root directory.
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path(File.join(File.dirname(__FILE__),'..','config','environment'))
require 'spec/autorun'
require 'spec/rails'
require 'remarkable'
require 'remarkable_rails'
require 'remarkable_paperclip'

require 'webrat'

Webrat.configure do |config|
  config.mode = :rails
end

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir[File.expand_path(File.join(File.dirname(__FILE__),'support','**','*.rb'))].each {|f| require f}

# module Spec::Example::ExampleGroupMethods
#   alias :story     :describe
#   alias :scenario  :example
#   alias :xscenario :xexample
# end

Spec::Runner.configure do |config|
  # If you're not using ActiveRecord you should remove these
  # lines, delete config/database.yml and disable :active_record
  # in your config/boot.rb
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
  config.fixture_path = RAILS_ROOT + '/spec/fixtures/'
  config.include(Webrat::Matchers)
  
  def should_be_on(path)
     URI.parse(current_url).path.should == path
   end

  def should_not_be_on(path)
    URI.parse(current_url).path.should_not == path
  end

  # Add page to improve readability:
  #
  #   page.should contain("foo bar")
  #   page.should have_tag("foo#bar")
  #
  def page
    response.body
  end

  def create_user(attributes={})
    attrs = {
      :username => 'vinibaggio',
      :password => 'password'
    }

    attrs.merge!(attributes)
    User.create(attrs)
  end
  
  def do_login(user, password)
    visit new_user_session_path

    fill_in "Username", :with => user
    fill_in "Password", :with => password
    click_button "Sign in"
  end
end



