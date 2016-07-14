require 'bundler/setup'
Bundler.setup

require 'minitest_and_rspec'
require 'rspec/its'
require 'factory_girl'
require 'faker'

RSpec.configure do |config|
  # Set optional configurations
  config.color = true
  config.tty = true
  config.formatter = :documentation
  config.order = :random
  config.include FactoryGirl::Syntax::Methods
  config.before(:suite) do
    FactoryGirl.find_definitions
  end
end
