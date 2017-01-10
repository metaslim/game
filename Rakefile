require 'rake/testtask'


desc "Run Tests"
Rake::TestTask.new(:test) do |test|
  test.libs << 'test'

  test.test_files = FileList['test/**/test_*.rb']
end
