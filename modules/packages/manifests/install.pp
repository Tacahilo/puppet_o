class packages::install {

  $packages = [
    'bzip2-devel',
    'gcc',
    'gcc-c++',
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
