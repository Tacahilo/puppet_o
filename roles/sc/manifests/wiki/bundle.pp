class sc::wiki::bundle {

  $path = '/var/www/wiki'

  exec { 'bundle_install_for_wiki':
    path    => '/usr/local/ruby-2.1.1/bin:/bin:/usr/bin:/usr/local/bin',
    cwd     => $path,
    command => 'bundle install --path vendor',
    unless  => 'bundle check',
    timeout => 0,
  }

}
