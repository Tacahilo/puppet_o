class ntp::config {

  file {
    '/etc/ntp.conf':
      ensure  => present,
      content => 'puppet:///modules/ntp/etc/ntp.conf';

    '/etc/ntp.d':
      ensure => directory;

    '/etc/ntp.d/drift':
      ensure => present;
  }

}
