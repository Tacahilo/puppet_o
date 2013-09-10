class znc {

  include znc::install
  include znc::config
  include znc::service

  Class['znc::install']
  -> Class['znc::config']
  -> Class['znc::service']

}
