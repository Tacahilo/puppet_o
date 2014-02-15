class munin::node::service {

  service { 'munin-node':
    ensure => running,
    enable => true,
  }

}
