require 'spec_helper'
describe 'radvd' do

  context 'with defaults for all parameters' do
    it { should contain_class('radvd') }
  end
end
