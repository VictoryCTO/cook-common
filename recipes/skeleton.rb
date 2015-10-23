# This recipe customizes `/etc/skel`.
# It should be run before users are created, and will ensure consistent
#   creation of users with our system-wide customizations.

# Create a `.profile.d` directory.
directory '/etc/skel/.profile.d' do
  action :create
  group 'root'
  mode 0755
  owner 'root'
end

# Add our custom `.bashrc`.
# This is what makes the `~/.profile.d` directory actually work its magic.
cookbook_file '/etc/skel/.bashrc' do
  action :create
  group 'root'
  mode 0644
  owner 'root'
  source 'etc/skel/_bashrc'
end

# Add a script that will turn on color.
cookbook_file '/etc/skel/.profile.d/000-color.sh' do
  action :create
  group 'root'
  mode 0644
  owner 'root'
  source 'etc/skel/_profile_d/color_sh'
end

# Add the Ubuntu stock `.bashrc` as one of the scripts in `.profile.d`.
cookbook_file '/etc/skel/.profile.d/010-ubuntu.sh' do
  action :create
  group 'root'
  mode 0644
  owner 'root'
  source 'etc/skel/_profile_d/ubuntu_sh'
end

# Override some stock settings 
cookbook_file '/etc/skel/.profile.d/020-override.sh' do
  action :create
  group 'root'
  mode 0644
  owner 'root'
  source 'etc/skel/_profile_d/override_sh'
end
