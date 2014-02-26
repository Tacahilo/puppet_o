class clamd::config {

  file { '/etc/clamd.conf':
    content => template('clamd/clamd.conf'),
  }

  file { '/etc/freshclam.conf':
    content => template('clamd/freshclam.conf'),
  }

}
