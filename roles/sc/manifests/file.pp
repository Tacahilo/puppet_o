class sc::file {

  file { '/usr/local/src/blacklist.cn':
    source => 'puppet:///modules/sc/usr/local/src/blacklist.cn',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  file { '/usr/local/src/blacklist.ru':
    source => 'puppet:///modules/sc/usr/local/src/blacklist.ru',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  file { '/usr/local/src/blacklist.kr':
    source => 'puppet:///modules/sc/usr/local/src/blacklist.ru',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  file { '/usr/local/src/blacklist.us':
    source => 'puppet:///modules/sc/usr/local/src/blacklist.ru',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  file { '/usr/local/bin/iptabels.sh':
    source => 'puppet:///modules/sc/usr/local/bin/iptabels.sh',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

}
