class selinux::disable {

  file { '/etc/selinux/config':
    ensure  => true,
    mode    => '0644',
    content => 'SELINUX=disabled',
  }

}
