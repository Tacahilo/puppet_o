class nginx {

  include nginx::install
  include nginx::yumrepo
  include nginx::file
  include nginx::service

  Class['nginx::yumrepo']
  -> Class['nginx::install']
  -> Class['nginx::file']
  -> Class['nginx::service']

}
