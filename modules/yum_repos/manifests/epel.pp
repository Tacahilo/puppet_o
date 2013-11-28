class yum_repos::epel {

  file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}":
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => "puppet:///modules/yum_repos/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}",
  }

  file { '/etc/yum.repos.d/epel.repo':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/yum_repos/etc/yum.repos.d/epel.repo',
  }

}
