class ntp::install {

  $packages = [
    'ntp',
    'ntpdate',
  ]

  package{ $packages:
    ensure => installed,
  }

}
