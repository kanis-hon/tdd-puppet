require 'spec_helper'

describe 'sample::service', :type => :class do
    
    
    it { should contain_service("sample_service") \
            .with_enable(true) \
            .with_ensure('running')
    }

end