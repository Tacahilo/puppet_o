class sc::blog::file {

  $listen = 8080
  $server_name = 'blog.hifumi.info'

  file{ '/etc/nginx/conf.d/blog.conf':
    content => template('sc/etc/nginx/conf.d/blog.conf.erb'),
  }

}
