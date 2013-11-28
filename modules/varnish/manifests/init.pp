class varnish {

  include varnish::install
  include varnish::service

  Class['varnish::install']
  -> Class['varnish::service']

}
