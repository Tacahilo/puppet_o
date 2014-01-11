define xbuild::ruby::install (
  $version    = $title,
  $installdir = '/usr/local',
) {

  exec { "ruby-build ${version}":
    path    => ['/bin', '/usr/bin', '/usr/local/xbuild'],
    command => "ruby-install ${version} ${installdir}/ruby-${version}",
    creates => "${installdir}/ruby-${version}",
    timeout => 0,
  }

}
