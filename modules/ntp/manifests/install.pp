class ntp::install {

  $packages = [
    'ntp',
    'ntpdate',
  ]

  package{ $packages:
    ensure => installed,
  }

  file { '/etc/ntp.d':
    ensure => directory,
  }

  file { '/etc/ntp.d/drift':
    ensure => present,
  }

}
