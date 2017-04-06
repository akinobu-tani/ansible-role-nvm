require '/tmp/kitchen/spec/spec_helper.rb'

set :disable_sudo, true

describe command('$SHELL -lc "nvm --version"') do
  its(:exit_status) { should eq 0 }
end
