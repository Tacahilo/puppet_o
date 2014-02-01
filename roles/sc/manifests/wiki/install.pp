class sc::wiki::install {

  ::git::clone { 'git@github.com:Tacahilo/wiki.git':
    path => '/var/www/wiki',
  }

}
