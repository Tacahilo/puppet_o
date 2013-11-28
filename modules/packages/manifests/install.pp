class packages::install {

  $packages = [
    'bzip2-devel',
    'gcc',
    'git',
    'make',
    'openssl-devel',
    'readline-devel',
    'sqlite-devel',
    'vim-enhanced',
    'zsh',
  ]

  package{ $packages:
    ensure => installed,
  }

}
