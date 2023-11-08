require 'rake/clean'

task default: %i[clean test]

desc 'Run unit tests'
require 'rake/testtask'
::Rake::TestTask.new(:test) do |task|
  task.libs << 'lib' << 'test'
  task.pattern = 'test/**/test_*.rb'
  task.verbose = true
end
