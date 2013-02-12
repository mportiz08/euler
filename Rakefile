require 'rake'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.test_files = FileList['test/test*.rb']
  t.verbose    = true
end

desc 'Run tests.'
task :default => :test

desc 'Open an irb session preloaded with this library.'
task :console do
  sh 'irb -I lib/ -r euler'
end
