require 'spec_helper'

describe 'utils::install' do
  it { should contain_package('mosh').with_ensure('installed') }
  it { should contain_package('tmux').with_ensure('installed') }
  it { should contain_package('tree').with_ensure('installed') }
  it { should contain_package('zsh').with_ensure('installed') }
end
