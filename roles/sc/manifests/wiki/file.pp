class sc::wiki::file {

  file { '/var/log/unicorn':
    ensure => directory,
    owner  => 'root',
    group  => 'web',
  }

  $sock_path   = '/var/run/unicorn_wiki.sock'
  $server_name = 'wiki.hifumi.info'

  file { '/etc/nginx/conf.d/wiki.conf':
    ensure  => file,
    content => template('sc/etc/nginx/conf.d/wiki.conf.erb'),
  }

  file { '/etc/logrotate.d/unicorn.conf':
    ensure  => file,
    source  => 'puppet:///modules/sc/etc/logrotate.d/unicorn.conf',
    require => Package['logrotate'],
  }

}
