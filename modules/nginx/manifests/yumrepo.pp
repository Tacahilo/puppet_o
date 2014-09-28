class nginx::yumrepo {

  yumrepo { 'nginx':
    descr    => 'nginx repo',
    enabled  => 1,
    baseurl  => 'http://nginx.org/packages/centos/$releasever/$basearch/',
    gpgcheck => 0,
  }

}
