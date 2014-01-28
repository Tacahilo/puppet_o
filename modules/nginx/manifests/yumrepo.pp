class nginx::yumrepo {

  file { '/etc/yum.repos.d/nginx.repo':
    source => 'puppet:///modules/nginx/etc/yum.repos.d/nginx.repo',
  }

}
