macosx_accessibility 'insert accessibility' do
  items node['macosx_accessibility_test']['items']
  action :insert
end
