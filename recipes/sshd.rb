# Configure sshd to answer on ports 22 and 71 and secure it.


# Iterate across the users data bag and accumulate the ids for the
# allow users list.
allow_users = ''
users_bag = data_bag('users')
users_bag.each do |login|
  allow_users = allow_users + " #{login}"
end
p allow_users

# support use of vagrant for local box builds.  Vagrant will take care of the
# key pair stuff, so this is the only necessary step b/c of how we secure
# ssh to a whitelist
allow_users = allow_users + " vagrant"

#
# Configure sshd
#
template '/etc/ssh/sshd_config' do
  group 'root'
  mode '0644'
  owner 'root'
  source 'sshd_config.erb'
  variables(
      :ALLOW_USERS => allow_users
  )
end

service "ssh" do
  action :restart
end
