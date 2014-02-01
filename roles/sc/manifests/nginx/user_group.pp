class sc::nginx::user_group {

  user { 'nginx':
    ensure => present,
    groups => ['nginx', 'web'],
    shell  => '/sbin/nologin',
  }

  group { 'web':
    ensure => present,
    gid    => 501,
  }

}
