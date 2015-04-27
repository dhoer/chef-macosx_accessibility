require 'spec_helper'

describe 'macosx_accessibility_test::disable' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(
      platform: 'mac_os_x',
      version: '10.10',
      step_into: ['macosx_accessibility']
    ).converge(described_recipe)
  end

  it 'disables accessibility' do
    expect(chef_run).to disable_macosx_accessibility('disable accessibility')
      .with(items: ['com.apple.RemoteDesktopAgent'])
  end

  it 'executes tccutil' do
    expect(chef_run).to run_execute('sudo /usr/sbin/tccutil.py --disable com.apple.RemoteDesktopAgent')
  end
end
