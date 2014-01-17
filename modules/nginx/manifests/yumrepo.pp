class nginx::yumrepo {

  file { '/etc/yum.repos.d/nginx.repo':
    ensure => present,
    source => 'puppet:///modules/nginx/etc/yum.repos.d/nginx.repo',
  }

}
