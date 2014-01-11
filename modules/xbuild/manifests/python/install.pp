define xbuild::python::install (
  $version    = $title,
  $installdir = '/usr/local',
) {

  exec { "python-build ${version}":
    path    => ['/bin', '/usr/bin', '/usr/local/xbuild'],
    command => "python-install ${version} ${installdir}/python-${version}",
    creates => "${installdir}/python-${version}",
    timeout => 0,
  }

}
