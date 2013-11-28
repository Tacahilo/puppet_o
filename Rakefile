require 'rake'
require 'rspec/core/rake_task'
require 'puppet-lint/tasks/puppet-lint'

task :default do
  sh 'rake -T'
end

PuppetLint.configuration.ignore_paths = ["vendor/**/*.pp"]
PuppetLint.configuration.send("disable_documentation")
PuppetLint.configuration.send("disable_80chars")

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/*/*_spec.rb'
end
