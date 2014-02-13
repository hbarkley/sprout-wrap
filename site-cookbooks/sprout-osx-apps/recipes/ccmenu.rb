include_recipe "sprout-osx-base::addloginitem"

app_path="/Applications/CCMenu.app"

dmg_package "CCMenu" do
  volumes_dir "CCMenu"
  source "http://iweb.dl.sourceforge.net/project/ccmenu/CCMenu/1.5/ccmenu-1.5-b.dmg"
  checksum "7cbdc6b3ff477fe420ab121e0892e0aebc48b1a9620aacfb6324932900d6b6cc"
  owner node['current_user']
  action :install
end

execute "Start CCMenu on login" do
  command "su #{node['current_user']} -c \"addloginitem #{app_path}\""
  not_if { File.exists?(app_path) }
end
