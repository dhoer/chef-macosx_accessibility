# Mac OS X Accessibility Cookbook

[![Cookbook Version](http://img.shields.io/cookbook/v/macosx_accessibility.svg?style=flat-square)][cookbook]
[![Build Status](http://img.shields.io/travis/dhoer/chef-macosx_accessibility.svg?style=flat-square)][travis]
[![GitHub Issues](http://img.shields.io/github/issues/dhoer/chef-macosx_accessibility.svg?style=flat-square)][github]

[cookbook]: https://supermarket.chef.io/cookbooks/macosx_accessibility
[travis]: https://travis-ci.org/dhoer/chef-macosx_accessibility
[github]: https://github.com/dhoer/chef-macosx_accessibility/issues


Configures Mac OS X Accessibility using Jacob Salmela's [tccutil](https://github.com/jacobsalmela/tccutil).

## Requirements

- Chef 11 or higher

### Platforms

- Mac OS X - Mavericks (10.9) or higher

## Usage

Requires super-user priveleges. The user must have logged in previously with GUI. This creates the accessibility
database (TCC.db).

Insert `/usr/bin/osascript` into the Accessibility database:

```ruby
macosx_accessibility 'Insert osascript' do
  items ['/usr/bin/osascript']
end
```

Insert TextExpander into the Accessibility database:

```ruby
macosx_accessibility 'Insert TextExpander' do
  items ['com.smileonmymac.textexpander', 'com.smileonmymac.textexpander.helper']
end
```

Remove Chrome from the Accessibility database:

```ruby
macosx_accessibility 'Remove Chrome' do
  items ['com.google.chrome']
  action :remove
end
```

Enable Chrome (must already exist in the list):

```ruby
macosx_accessibility 'Enable Chrome' do
  items ['com.google.chrome']
  action :enable
end
```

Disable /usr/sbin/jamfAgent (must already exist in the list):

```ruby
macosx_accessibility 'Disable JAMF Agent' do
  items ['/usr/sbin/jamfAgent']
  action :disable
end
```

## Getting Help

- Ask specific questions on [Stack Overflow](http://stackoverflow.com/questions/tagged/chef-macosx_accessibility).
- Report bugs and discuss potential features in
[Github issues](https://github.com/dhoer/chef-macosx_accessibility/issues).

## Contributing

Please refer to [CONTRIBUTING](https://github.com/dhoer/chef-macosx_accessibility/blob/master/CONTRIBUTING.md).

## License

MIT - see the accompanying [LICENSE](https://github.com/dhoer/chef-macosx_accessibility/blob/master/LICENSE.md) file
for details.
