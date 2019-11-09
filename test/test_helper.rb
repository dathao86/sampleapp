ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

<<<<<<< HEAD

=======
class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
end
>>>>>>> master

class ActiveSupport::TestCase
  fixtures :all
  include ApplicationHelper

  # Add more helper methods to be used by all tests here...
end
