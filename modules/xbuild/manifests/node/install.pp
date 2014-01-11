define xbuild::node::install (
  $version    = $title,
  $installdir = '/usr/local',
) {

  exec { "node-build ${version}":
    path    => ['/bin', '/usr/bin', '/usr/local/xbuild'],
    command => "node-install ${version} ${installdir}/node-${version}",
    creates => "${installdir}/node-${version}",
    timeout => 0,
  }

}
