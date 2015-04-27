require 'spec_helper'

describe 'macosx_accessibility_test::insert' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(
      platform: 'ubuntu',
      version: '14.04',
      step_into: ['macosx_accessibility']
    ).converge(described_recipe)
  end

  it 'calls accessibility' do
    expect(chef_run).to insert_macosx_accessibility('insert accessibility')
      .with(items: ['com.apple.RemoteDesktopAgent'])
  end

  it 'logs warning' do
    expect(chef_run).to write_log('Resource macosx_accessibility is not supported on this platform.')
  end
end
