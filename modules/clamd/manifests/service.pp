class clamd::service {

  service{ 'clamd':
    ensure     => running,
    enable     => true,
    hasrestart => true,
  }

}
