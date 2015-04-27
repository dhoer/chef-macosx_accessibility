require 'serverspec'

# Required by serverspec
set :backend, :exec

describe 'macosx_accessibility_test' do
  case os[:family]
  when 'darwin'
    describe file('/Library/Application Support/com.apple.TCC/TCC.db') do
      it { should be_file }
    end
  end
end
