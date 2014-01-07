class xbuild::install {

  exec { 'install xbuild':
    path    => '/usr/bin',
    command => 'git clone git@github.com:tagomoris/xbuild.git /usr/local/xbuild',
    creates => '/usr/local/xbuild',
    require => Package['git'],
  }

}
