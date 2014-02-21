class base::file {

  file { '/etc/motd':
    content => template('base/etc/motd'),
  }

}
