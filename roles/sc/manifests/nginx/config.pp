class sc::nginx::config {

  ::nginx::config { 'default':
    user        => 'nginx',
    processes   => 2,
    connections => 1024,
  }

}
