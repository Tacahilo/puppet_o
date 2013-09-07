require 'rake'
require 'rspec/core/rake_task'
require 'puppet-lint/tasks/puppet-lint'

task :default do
  sh 'rake -T'
end

desc 'Run specs'
RSpec::Core::RakeTask.new(:spec_puppet) do |t|
  t.pattern = 'modules/*/spec/**/*_spec.rb'
end

PuppetLint.configuration.ignore_paths = ["vendor/**/*.pp"]
PuppetLint.configuration.send("disable_documentation")
