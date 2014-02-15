class munin::install {

  package { 'munin':
    ensure => installed,
  }

}
