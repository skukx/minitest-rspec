require "bundler/gem_tasks"

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
  # rspec not available
end

begin
  require 'rake/testtask'

  Rake::TestTask.new do |t|
    t.libs.push 'test'
    t.pattern = 'test/**/*_test.rb'
    t.warning = true
    t.verbose = true
  end
rescue LoadError
  # minitest not available
end
