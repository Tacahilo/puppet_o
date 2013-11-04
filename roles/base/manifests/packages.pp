class base::packages {

  $packages = [
    'bzip2-devel',
    'gcc',
    'make',
    'openssl-devel',
    'readline-devel',
  ]

  package{ $packages:
    ensure => installed,
  }

}
