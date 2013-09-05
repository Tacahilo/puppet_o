require 'spec_helper'

describe 'git::install' do
  it { should contain_package('git').with_ensure('present') }
end
