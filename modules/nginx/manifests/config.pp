define nginx::config (
  $user        = 'nginx',
  $processes   = 1,
  $connections = 1024,
) {

  file { '/etc/nginx/nginx.conf':
    content => template('nginx/etc/nginx/nginx.conf.erb'),
    owner  => 'root',
    group  => 'root',
  }

}
