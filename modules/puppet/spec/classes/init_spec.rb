require 'spec_helper'

describe 'puppet' do
  it { should include_class('puppet::install') }
end
