require 'spec_helper'

describe 'ntp::install' do
  it { should contain_package('ntp').with_ensure('installed') }
  it { should contain_package('ntpdate').with_ensure('installed') }
end
