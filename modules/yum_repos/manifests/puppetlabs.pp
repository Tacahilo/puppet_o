class yum_repos::puppetlabs {

  file { '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-puppetlabs':
    ensure => true,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/yum_repos/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-puppetlabs',
  }

  package {"puppetlabs-release-el-${::operatingsystemmajrelease}.noarch.rpm":
    ensure   => true,
    source   => "http://yum.puppetlabs.com/puppetlabs-release-el-${::operatingsystemmajrelease}.noarch.rpm",
    provider => 'rpm',
  }

}
