def whyrun_supported?
  true
end

def tccutil(action, items)
  if platform_family?('mac_os_x')
    recipe_eval do
      run_context.include_recipe 'macosx_accessibility::default'
    end
    items.each do |item|
      execute "sudo #{node['macosx_accessibility']['tccutil']['home']} --#{action} #{item}"
    end
  else
    log('Resource macosx_accessibility is not supported on this platform.') { level :warn }
  end
end

action :insert do
  converge_by('macosx accessibility insert') do
    tccutil('insert', new_resource.items)
  end
end

action :remove do
  converge_by('macosx accessibility remove') do
    tccutil('remove', new_resource.items)
  end
end

action :enable do
  converge_by('macosx accessibility enable') do
    tccutil('enable', new_resource.items)
  end
end

action :disable do
  converge_by('macosx accessibility disable') do
    tccutil('disable', new_resource.items)
  end
end
