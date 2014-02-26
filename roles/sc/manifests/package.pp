class sc::package {

  include ::clamd

  $packages = [
    'libicu-devel',
  ]

  package { $packages:
    ensure => installed,
  }

}
