class weechat {

  $packages = [
    'weechat',
    'weechat-devel',
  ]

  package { $packages:
    ensure => installed,
  }

}
