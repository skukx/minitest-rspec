require 'bundler/setup'
Bundler.setup

require 'minitest_and_rspec'
require 'rspec/its'
require 'factory_girl_rails'
require 'faker'

RSpec.configure do |config|
  # Set optional configurations
  config.color = true
  config.tty = true
  config.formatter = :documentation
  config.order = :random
end
