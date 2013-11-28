class yum_repos::epel {

  yumrepo { 'epel':
    enabled    => 1,
    mirrorlist => "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-${::operatingsystemmajrelease}&arch=${::architecture}",
    gpgcheck   => 1,
    gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}",
    descr      => "Extra Packages for Enterprise Linux ${::operatingsystemmajrelease} - ${::architecture}",
  }

  file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}":
    ensure => true,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => "puppet:///modules/yum_repos/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}",
  }

}
