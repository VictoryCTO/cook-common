name 'cook-common'
maintainer 'VictoryCTO Chef'
maintainer_email 'ourchef@victorycto.com'
license 'All rights reserved'
description 'Installs/Configures shell users, and packages common to all '\
            'images'
long_description 'Installs/Configures shell users, and packages common to '\
                 'all images'
version '0.0.1'

depends 'hostname'

depends 'ntp'

depends 'sudo'

depends 'timezone-ii'

depends 'users'