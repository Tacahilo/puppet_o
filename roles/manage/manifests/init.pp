class manage {

  include base
  include squid

  Class['base']
  -> Class['squid']

}
