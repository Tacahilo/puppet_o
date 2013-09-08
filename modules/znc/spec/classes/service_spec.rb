require 'spec_helper'

describe 'znc::service' do
  it do
    should contain_service('znc').with(
      'ensure' => 'running',
      'enable' => 'true',
    )
  end
end
