node.default['sprout']['rbenv'] = {
  'home' => "#{node['sprout']['home']}/.rbenv",
  'command' => '/usr/local/bin/rbenv',
  'rubies' => {
      '1.9.3-p484' => {},
      '2.0.0-p353' => {},
    },
  'default_ruby' => '1.9.3-p484',
}
