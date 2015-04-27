if defined?(ChefSpec)
  def insert_macosx_accessibility(items)
    ChefSpec::Matchers::ResourceMatcher.new(:macosx_accessibility, :insert, items)
  end

  def install_macosx_accessibility(items)
    ChefSpec::Matchers::ResourceMatcher.new(:macosx_accessibility, :install, items)
  end

  def remove_macosx_accessibility(items)
    ChefSpec::Matchers::ResourceMatcher.new(:macosx_accessibility, :remove, items)
  end

  def enable_macosx_accessibility(items)
    ChefSpec::Matchers::ResourceMatcher.new(:macosx_accessibility, :enable, items)
  end

  def disable_macosx_accessibility(items)
    ChefSpec::Matchers::ResourceMatcher.new(:macosx_accessibility, :disable, items)
  end
end
