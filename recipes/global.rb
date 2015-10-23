# Set global system attributes.
# Settings for things like the editor, umask, etc. These can be overridden
#  by a user, but should be viewed as sensible.
# Useful management scripts we have hacked up

# Make the root user's default editor vi
bash 'default_root_user_editor' do
  code <<-EOH
    /usr/bin/update-alternatives --set editor /usr/bin/vim.basic
  EOH
  cwd '/tmp'
  user 'root'
end

# Set the umask for files to be 775 by default
bash 'default_global_umask' do
  code <<-EOH
    sed -i "s/umask 022/umask 002/g" /etc/profile
  EOH
  cwd '/tmp'
  user 'root'
end

# Nifty script that shows swap usage by user/process
cookbook_file '/usr/local/bin/swap' do
  action :create
  group 'root'
  mode 0755
  owner 'root'
  source 'swap_sh'
end