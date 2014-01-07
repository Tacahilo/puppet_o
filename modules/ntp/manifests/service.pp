class ntp::service {

  service { 'ntpd':
    ensure    => running,
    enable    => true,
  }

  service { 'ntpdate':
    ensure  => stopped,
    enable  => true,
  }

}
