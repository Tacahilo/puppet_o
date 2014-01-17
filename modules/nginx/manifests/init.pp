class nginx {

  include nginx::install
  include nginx::yumrepo
  include nginx::file

  Class['nginx::yumrepo']
  -> Class['nginx::install']
  -> Class['nginx::file']

}
