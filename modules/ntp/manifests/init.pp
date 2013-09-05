class ntp {

  include ntp::install
  include ntp::service

  Class['ntp::install']
  -> Class['ntp::service']
}
