require 'spec_helper'

describe 'ntp::config' do
  it do
    should contain_file('/etc/ntp.conf').with(
      'ensure' => 'present',
      'content' => 'puppet:///modules/ntp/etc/ntp.conf',
    )
  end

  it do
    should contain_file('/etc/ntp.d').with(
      'ensure' => 'directory',
    )
  end

  it do
    should contain_file('/etc/ntp.d/drift').with(
      'ensure' => 'present',
    )
  end
end
