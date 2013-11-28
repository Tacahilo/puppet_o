class weechat::install {

  $packages = [
    'weechat',
    'weechat-devel',
  ]

  package { $packages:
    ensure => installed,
  }

}
