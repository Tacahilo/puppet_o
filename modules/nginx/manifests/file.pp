class nginx::file {

  file { '/etc/nginx/mime.types':
    ensure => present,
    source => 'puppet:///modules/nginx/etc/nginx/mime.types',
  }


  file { '/etc/nginx/nginx.conf':
    ensure => present,
    source => 'puppet:///modules/nginx/etc/nginx/nginx.conf',
  }


  file { '/etc/nginx/proxy.conf':
    ensure => present,
    source => 'puppet:///modules/nginx/etc/nginx/proxy.conf',
  }


  file { '/etc/nginx/gzip.conf':
    ensure => present,
    source => 'puppet:///modules/nginx/etc/nginx/gzip.conf',
  }

}
