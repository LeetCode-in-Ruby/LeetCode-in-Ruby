require 'rake/clean'

task default: %i[clean test]

desc 'Run unit tests'
require 'rake/testtask'
::Rake::TestTask.new(:test) do |task|
  task.libs << 'lib' << 'test'
  task.pattern = 'src/test/ruby/**/*.rb'
  task.verbose = true
end
