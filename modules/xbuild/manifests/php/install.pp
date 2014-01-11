define xbuild::php::install (
  $version    = $title,
  $installdir = '/usr/local',
) {

  exec { "php-build ${version}":
    path    => ['/bin', '/usr/bin', '/usr/local/xbuild'],
    command => "php-install ${version} ${installdir}/php-${version}",
    creates => "${installdir}/php-${version}",
    timeout => 0,
  }

}
