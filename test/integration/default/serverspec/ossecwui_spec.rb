require 'serverspec'

# Required by serverspec
set :backend, :exec

describe command('wget -O - http://localhost/ossec-wui/') do  
#    its(:stdout) { should match /OSSEC Web Interface - Open Source Security/ }
#    its(:exit_status) { should eq 0 }
## apache authentication needed
    its(:exit_status) { should eq 6 }
end  

