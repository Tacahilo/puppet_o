class squid::config {

  file { '/etc/squid':
    ensule => directory,
    owner  => 'root',
    group  => 'root'
    mode   => '0755',
  }

  file { '/etc/squid/squid.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'squid',
    mode    => '0640',
    content => 'puppet:///modules/squid/etc/squid/squid.conf',
  }

}
