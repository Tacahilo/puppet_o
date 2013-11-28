class puppet::server::service {

  service { 'puppetmasterd':
    ensure    => running,
    enable    => true,
    hasstatus => true,
  }

}
