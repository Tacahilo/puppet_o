class ntp::config {

  file { '/etc/ntp.conf':
    ensure  => present,
    content => 'puppet:///modules/ntp/etc/ntp.conf',
  }

  file { '/etc/ntp.d':
    ensure => directory,
  }

  file { '/etc/ntp.d/drift':
    ensure => present,
  }

}
