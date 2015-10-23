# This recipe depends on the community users cookbook with additions from
# github.com/behemphi/users for file management

# The community users cookbook creates a standard sudo group akin to the
# Redhat `wheel` or the Debian `sudo`.  This recipe takes care of that.
users_manage 'sysadmin' do
  action [:remove, :create]
  group_id 2500
end
