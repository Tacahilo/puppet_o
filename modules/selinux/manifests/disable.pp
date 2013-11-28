class selinux::disable {

  file { '/etc/selinux/config':
    ensure  => file,
    mode    => '0644',
    content => 'SELINUX=disabled',
  }

}
