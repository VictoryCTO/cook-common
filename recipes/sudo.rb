
# This recipe wraps the community sudoers cookbook.

# Include the Opscode sudo cookbook so that our sysadmins get passwordless
# access to sudo
include_recipe 'sudo::default'