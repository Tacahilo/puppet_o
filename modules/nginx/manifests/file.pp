class nginx::file {

  file { '/etc/nginx/mime.types':
    source => 'puppet:///modules/nginx/etc/nginx/mime.types',
    owner  => 'root',
    group  => 'root',
  }

  file { '/etc/nginx/proxy.conf':
    source => 'puppet:///modules/nginx/etc/nginx/proxy.conf',
    owner  => 'root',
    group  => 'root',
  }

  file { '/etc/nginx/gzip.conf':
    source => 'puppet:///modules/nginx/etc/nginx/gzip.conf',
    owner  => 'root',
    group  => 'root',
  }

  file { '/etc/nginx/conf.d/default.conf':
    ensure => absent,
  }

}
