require 'spec_helper'

describe 'znc::install' do
  it do
    should contain_package('znc').with(
      'ensure' => 'installed',
    )
  end
end
