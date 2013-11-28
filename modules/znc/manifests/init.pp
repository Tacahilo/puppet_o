class znc {

  include znc::install
  include znc::service

  Class['znc::install']
  -> Class['znc::service']

}
