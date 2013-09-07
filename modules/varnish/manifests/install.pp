class varnish::install {

  package{ 'varnish':
    ensure => installed,
  }

}
