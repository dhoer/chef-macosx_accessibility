remote_file node['macosx_accessibility']['tccutil']['home'] do
  source node['macosx_accessibility']['tccutil']['url']
  checksum node['macosx_accessibility']['tccutil']['checksum']
  mode '0755'
end
