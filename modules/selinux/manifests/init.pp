class selinux {

  file { '/etc/selinux/config':
    ensure  => file,
    mode    => '0644',
    content => 'SELINUX=disabled',
  }

  exec { 'disable selinux':
    path    => '/bin:/usr/sbin',
    command => 'setenfore 0',
    unless  => 'getenforce | grep -q Disabled',
  }

}
