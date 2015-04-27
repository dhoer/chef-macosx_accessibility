require 'spec_helper'

describe 'macosx_accessibility_test::insert' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(
      platform: 'mac_os_x',
      version: '10.10',
      step_into: ['macosx_accessibility']
    ).converge(described_recipe)
  end

  it 'inserts accessibility' do
    expect(chef_run).to insert_macosx_accessibility('insert accessibility')
      .with(items: ['com.apple.RemoteDesktopAgent'])
  end

  it 'executes tccutil' do
    expect(chef_run).to run_execute('sudo /usr/sbin/tccutil.py --insert com.apple.RemoteDesktopAgent')
  end
end
