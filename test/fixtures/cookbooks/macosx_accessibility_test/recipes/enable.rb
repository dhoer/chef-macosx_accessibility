macosx_accessibility 'enable accessibility' do
  items node['macosx_accessibility_test']['items']
  action :enable
end
