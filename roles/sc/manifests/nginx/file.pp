class sc::nginx::file {

  file { '/usr/share/nginx':
    ensure => absent,
    force  => true,
  }

  file { '/var/www':
    ensure => directory,
    owner  => 'root',
    group  => 'nginx',
  }

}
