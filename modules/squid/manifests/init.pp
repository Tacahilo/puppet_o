class squid {

  include squid::install
  include squid::config
  include squid::service

  Class['squid::install']
  -> Class['squid::config']
  -> Class['squid::service']

}
