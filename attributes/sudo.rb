#
# This file describes the configuration of the community sudo cookbook
#

# Chef abstracts the differences in the name of the global default sudo group
# (usually `wheel`) to `sysadmin`.  This group needs to be granted
# full sudo access
override['authorization']['sudo']['groups'] = %w{ admin wheel sysadmin }

# As of Debian 1.7.2, the sudoers file behaves similarly to the Debian
# Apache layout where files in `/etc/sudoers.d` are read as concatenations to
# the base sudoers file via the `includedir` directive.
override['authorization']['sudo']['include_sudoers_d'] = true

# We do _not_ want to allow passwordless sudo.  This is a simple sanity check
# for those of us using these commands in production.
override['authorization']['sudo']['passwordless'] = true