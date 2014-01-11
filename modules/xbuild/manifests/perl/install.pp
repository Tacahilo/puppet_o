define xbuild::perl::install (
  $version    = $title,
  $installdir = '/usr/local',
) {

  exec { "perl-build ${version}":
    path    => ['/bin', '/usr/bin', '/usr/local/xbuild'],
    command => "perl-install ${version} ${installdir}/perl-${version}",
    creates => "${installdir}/perl-${version}",
    timeout => 0,
  }

}
