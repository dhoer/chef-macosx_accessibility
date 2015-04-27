macosx_accessibility 'remove accessibility' do
  items node['macosx_accessibility_test']['items']
  action :remove
end
