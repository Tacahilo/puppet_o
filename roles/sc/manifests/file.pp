class sc::file {

  file { '/usr/local/src/blacklist.cn':
    ensure => file,
    source => 'puppet:///modules/sc/usr/local/src/blacklist.cn',
  }

  file { '/usr/local/src/blacklist.ru':
    ensure => file,
    source => 'puppet:///modules/sc/usr/local/src/blacklist.ru',
  }

  file { '/usr/local/bin/iptabels.sh':
    ensure => file,
    source => 'puppet:///modules/sc/usr/local/bin/iptabels.sh',
  }

}
