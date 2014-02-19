class xbuild::install {

  if !defined(Package['git']) {
    package { 'git':
      ensure => installed,
    }
  }

  ::git::clone { 'xbuild':
    repo => 'https://github.com/tagomoris/xbuild.git',
    dist => '/usr/local/xbuild',
  }

}
