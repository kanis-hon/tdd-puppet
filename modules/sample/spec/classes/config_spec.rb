require 'spec_helper'

describe 'sample::config', :type => :class do
    
    context 'config on linux' do
        let :facts do
            {
                :kernel => 'linux'
            }
        end
        
        it { should contain_file("config.conf") \
            .with_content('connection string = localhost:9200') }
    end
    context 'config on linux' do
        let :facts do
            {
                :kernel => 'linux'
            }
        end
        let :params do
            {
                :connection_string => 'pvcl-xxxx:9200'
            }
        end
        
        it { should contain_file("config.conf") \
            .with_content('connection string = pvcl-xxxx:9200') \
            .with_path('/etc/sample_app/config/config.conf') }
    end


end