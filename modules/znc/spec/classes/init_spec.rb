require 'spec_helper'

describe 'znc' do
  it { should include_class('znc::install') }
  it { should include_class('znc::config') }
  it { should include_class('znc::service') }
end
