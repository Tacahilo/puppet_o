class sc::package {

  include ::clamd

  $packages = [
    'libicu-devel',
    'perl-ExtUtils-MakeMaker', # for git
    'spawn-fcgi',
  ]

  package { $packages:
    ensure => installed,
  }

}
