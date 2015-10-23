# Set the FQDN
include_recipe 'cook-common::hostname'

# Set the timezone
include_recipe 'cook-common::timezone'

# Set up a custom skeleton for SSH users
include_recipe 'cook-common::skeleton'

# Global settings and handy scripts
include_recipe 'cook-common::global'

# Enforce sudoers access policy
include_recipe 'cook-common::sudo'

# Create the SSH users common to all machines
include_recipe 'cook-common::users'

# Lock down ssh to only users in the databags + the vagrant user
include_recipe 'cook-common::sshd'

# Install a common set of packages for useful things
include_recipe 'cook-common::packages'