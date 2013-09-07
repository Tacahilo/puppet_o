class ntp::service {

  service { 'ntpd':
    ensure    => running,
    enable    => true,
  }

  $ensure_type = $::virtual ? {
    'virtualbox' => stopped,
    default      => running,
  }

  service { 'ntpdate':
    ensure  => $ensure_type,
    enable  => true,
  }

}
