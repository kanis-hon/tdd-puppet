require 'spec_helper'

describe 'sample::comparerclass', :type => :class do
    
    context 'x > y' do
        let :params do
        {
            :x => 10000,
            :y => 0
        }
        end
        
        it { should contain_notify("result is \"x is greater than y\"") }
    end
    
    context 'x = y' do
	    let :params do
	    {
	        :x => 1,
	        :y => 1
	    }
    	end
    
    	it { should contain_notify("result is \"x is equal to y\"") }
    end
    
    context 'x < y' do
	    let :params do
	    {
	        :x => 1,
	        :y => 100
	    }
    	end
    
    	it { should contain_notify("result is \"x is less than y\"") }
    end

    context 'invalid x value' do
	    let :params do
	    {
	        :x => 'NotANumber',
	        :y => 100
	    }
    	end
    
    	it "should fail" do
    		expect do
    			subject
    		end.to raise_error(Puppet::Error, /invalid x value, should be integer/) 
    	end
    end    
    
    context 'invalid y value' do
	    let :params do
	    {
	        :x => 1,
	        :y => 'NotANumber'
	    }
    	end
    
    	it "should fail" do
    		expect do
    			subject
    		end.to raise_error(Puppet::Error, /invalid y value, should be integer/) 
    	end
    end
end
#at_exit { RSpec::Puppet::Coverage.report! }