require '/tmp/kitchen/spec/spec_helper.rb'

set :disable_sudo, true

describe command('$SHELL -lc "nvm --version"') do
  its(:exit_status) { should eq 0 }
end

describe command('$SHELL -lc "node --version"') do
  its(:stdout) { should contain 'v6.10.2' }
end

describe command('$SHELL -lc "yarn --version"') do
  its(:exit_status) { should eq 0 }
end
