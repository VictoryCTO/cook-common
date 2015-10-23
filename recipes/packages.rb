# Packages to be installed on all our systems. Typically this should be tools
# and troubleshooting stuff.

# List packages common to all machines.
packages = %w{ dstat gdb git-core lsof screen strace sysstat tmux tshark}

# Loop through and install packages
packages.each do |pkg|
  package pkg
end
