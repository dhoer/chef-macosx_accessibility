require 'spec_helper'

describe 'macosx_accessibility::default' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(
      platform: 'mac_os_x',
      version: '10.10'
    ).converge(described_recipe)
  end

  it 'downloads and install tccutil' do
    expect(chef_run).to create_remote_file('/usr/sbin/tccutil.py')
  end
end
