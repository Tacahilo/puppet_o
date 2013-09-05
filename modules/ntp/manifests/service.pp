class ntp::service {

  service { 'ntpd':
    ensure    => running,
    enable    => true,
  }

  service { 'ntpdate':
    ensure  => $::virtual ? {
      'virtualbox' => stopped,
      default      => running,
    },
    enable  => true,
  }
}
