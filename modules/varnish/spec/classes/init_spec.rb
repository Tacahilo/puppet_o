require 'spec_helper'

describe 'varnish' do
  it { should include_class('varnish::install') }
  it { should include_class('varnish::service') }
end
