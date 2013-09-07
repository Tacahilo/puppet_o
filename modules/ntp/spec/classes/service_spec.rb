require 'spec_helper'

describe 'ntp::service' do
  it do
    should contain_service('ntpd').with(
      'ensure' => 'running',
      'enable' => 'true',
    )
  end

  context '$virtual is default' do
    it do
      should contain_service('ntpdate').with(
        'ensure' => 'running',
        'enable' => 'true',
      )
    end
  end

  context '$virtual is virtualbox' do
    let(:facts) { { :virtual => 'virtualbox' } }
    it do
      should contain_service('ntpdate').with(
        'ensure' => 'stopped',
        'enable' => 'true',
      )
    end
  end
end
