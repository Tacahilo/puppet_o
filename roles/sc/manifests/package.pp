class sc::package {

  include ::clamd

  $packages = [
    'libicu-devel',
    'spawn-fcgi',
  ]

  package { $packages:
    ensure => installed,
  }

}
