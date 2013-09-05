require 'spec_helper'

describe 'puppet::install' do
  it { should contain_package('puppet').with_ensure('present') }
end
