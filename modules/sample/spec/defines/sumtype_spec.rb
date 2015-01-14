require 'spec_helper'

describe 'sample::sumtype', :type => :defined do
    
    context 'valid x and y values' do
        let :params do
            {
                :x => 10000,
                :y => 10
            }
        end
        let(:title) { 'x is 10000 and y is 10' }
        
        
        #it { should have_resource_count(1) }
        it { should contain_notify("x is 10000, y is 10, sum of x and y is 10010") }
    end
end
