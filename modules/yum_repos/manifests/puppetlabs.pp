class yum_repos::puppetlabs {

  file { '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-puppetlabs':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/yum_repos/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-puppetlabs',
  }

  file { '/etc/yum.repos.d/puppetlabs.repo':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/yum_repos/etc/yum.repos.d/puppetlabs.repo',
  }

}
