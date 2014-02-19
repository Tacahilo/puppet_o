class sc::wiki::install {

  ::git::clone { 'git@github.com:Tacahilo/wiki.git':
    dist => '/var/www/wiki',
  }

}
