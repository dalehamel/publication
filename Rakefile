
require 'bundler/gem_tasks'
require 'publication/rake_tasks'

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  task default: :spec
rescue LoadError
  puts 'no rspec available'
end
