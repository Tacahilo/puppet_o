class base::package {

  include ::git
  include ::ntp

  $packages = [
    'bzip2-devel',
    'gcc',
    'gcc-c++',
    'jwhois',
    'libcurl-devel',
    'libjpeg-turbo-devel',
    'libmcrypt-devel',
    'libpng-devel',
    'libtidy-devel',
    'libxml2-devel',
    'libxslt-devel',
    'logrotate',
    'make',
    'mosh',
    'nkf',
    'openssl-devel',
    'patch',
    'readline-devel',
    'sqlite-devel',
    'tmux',
    'tree',
    'vim-enhanced',
    'zsh',
  ]

  package{ $packages:
    ensure => installed,
  }

}
