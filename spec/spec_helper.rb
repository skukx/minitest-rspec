require 'bundler/setup'
Bundler.setup

require 'minitest_and_rspec'

RSpec.configure do |config|
  # Set optional configurations
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
