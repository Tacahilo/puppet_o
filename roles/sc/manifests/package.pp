class sc::package {

  include ::clamd

  $packages = [
    'gettext', # for git
    'libicu-devel',
    'perl-ExtUtils-MakeMaker', # for git
    'perl-Locale-Msgfmt', # for git
    'spawn-fcgi',
  ]

  package { $packages:
    ensure => installed,
  }

}
