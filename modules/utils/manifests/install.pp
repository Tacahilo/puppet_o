class utils::install {

  $packages = [
    'mosh',
    'tmux',
    'tree',
    'zsh',
  ]

  package{ $packages:
    ensure => installed,
  }

}
