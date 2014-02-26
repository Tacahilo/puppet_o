class sc::blog::file {

  $listen = 8080
  $server_name = 'blog.hifumi.conf'

  file{ '/etc/nginx/conf.d/blog.conf':
    content => template('sc/etc/nginx/conf.d/blog.conf.erb'),
  }

}
