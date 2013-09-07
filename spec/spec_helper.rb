require 'rspec-puppet'
require 'pathname'

RSpec.configure do |c|
  c.before do
    fixture_path   = File.expand_path('../fixtures', Pathname.new(example.metadata[:location]).dirname)
    c.module_path  = File.join(fixture_path, 'modules')
    c.module_path += ':' + File.join(fixture_path, '..', '..', '..')
    c.manifest_dir = File.join(fixture_path, 'manifests')
  end
end
