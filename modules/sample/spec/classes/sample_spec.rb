require 'spec_helper'
describe 'sample', :type => :class do

  it { should contain_sample__sumtype("sum of 100 and 1").with(
        'x' => 100,
        'y' => 1
      ).that_comes_before('Sample::Sumtype[sum of 200 and 2]') }
      
  it { should contain_sample__sumtype("sum of 200 and 2").with(
	    'x' => 200,
	    'y' => 2
	  ) }

  it { should contain_class("sample::config").that_comes_before('Class[sample::service]') }
  it { should contain_class("sample::service") }
end






#context 'x > y' do
   # let :params do
  #      { :x_value => 10000, :y_value => 0 }
   # end

    #it { should contain_notify('x is more than y') }
  #end
  
  #it { should contain_sample__helper.with(
  #      'name' => 'anukool'
   #   ) }
  #it { should contain_class('sample::config') }
    