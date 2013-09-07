require 'spec_helper'

describe 'varnish::service' do
  it do
    should contain_service('varnish').with(
      'ensure' => 'running',
      'enable' => 'true',
    )
  end
end
