# #
# # This file describes the config of the community ntp cookbook
# #

# # For local development, use the global ntp directly.  For production use
# # our own local ntp server.
# # TODO: Come up with a better way to detect local development
# if Chef::Config[:solo]
#   override['ntp']['servers'] = %w{ 0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org }
# elsif node['cloud']['provider'] == 'ec2'
#   override['ntp']['servers'] = %w{ 0.amazon.pool.ntp.org 1.amazon.pool.ntp.org 2.amazon.pool.ntp.org 3.amazon.pool.ntp.org }
# else
# # TODO: Need the proper address for this
#   override['ntp']['servers'] = %w{ 10.181.13.214 }
# end