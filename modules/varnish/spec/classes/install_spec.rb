require 'spec_helper'

describe 'varnish::install' do
  it { should contain_package('varnish').with_ensure('installed') }
end
