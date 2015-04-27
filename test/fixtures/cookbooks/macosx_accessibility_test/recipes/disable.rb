macosx_accessibility 'disable accessibility' do
  items node['macosx_accessibility_test']['items']
  action :disable
end
