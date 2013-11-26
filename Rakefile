# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

# require 'rspec/core/rake_task'
# RSpec::Core::RakeTask.new(:spec)

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "quorable"
  gem.homepage = "http://github.com/O-I/quorable"
  gem.license = "MIT"
  gem.summary = %Q{A quasi-API for Quora}
  gem.description = %Q{Still need to add some more functionality. Right now, all this does is get the 10 (or fewer) most recent paths for a given topic.}
  gem.email = "hore.rahul@gmail.com"
  gem.authors = ["Rahul Horé"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

task default: :spec
task test:    :spec

# require 'rake/testtask'
# Rake::TestTask.new(:test) do |test|
#   test.libs << 'lib' << 'test'
#   test.pattern = 'test/**/test_*.rb'
#   test.verbose = true
# end

# require 'rdoc/task'
# Rake::RDocTask.new do |rdoc|
#   version = File.exist?('VERSION') ? File.read('VERSION') : ""

#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title = "quorable #{version}"
#   rdoc.rdoc_files.include('README*')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end
