class sc::wiki::nginx {

  $sock_path   = '/var/run/unicorn_wiki.sock'
  $server_name = 'wiki.hifumi.info'

  file { '/etc/nginx/conf.d/wiki.conf':
    ensure  => file,
    content => template('sc/etc/nginx/conf.d/wiki.conf.erb'),
  }

}
