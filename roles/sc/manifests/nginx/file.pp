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

  #munin
  file {
    '/etc/munin/plugins/nginx_status':
      ensure => link,
      target => '/usr/share/munin/plugins/nginx_status';

    '/etc/munin/plugins/nginx_request':
      ensure => link,
      target => '/usr/share/munin/plugins/nginx_request';
  }

}
