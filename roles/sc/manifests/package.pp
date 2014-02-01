class sc::package {

  $packages = [
    'libicu-devel',
  ]

  package { $packages:
    ensure => installed,
  }

}
