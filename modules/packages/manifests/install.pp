class packages::install {

  $packages = [
    'bzip2-devel',
    'gcc',
    'nkf',
    'make',
    'mosh',
    'openssl-devel',
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
