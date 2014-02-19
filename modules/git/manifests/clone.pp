define git::clone (
  $dist,
  $repo = $name
) {

  require git

  exec { "git_clone_${name}":
    command => "git clone --recursive ${repo} ${dist}",
    path    => '/usr/bin:/usr/local/bin',
    creates => "${dist}/.git",
    timeout => 0,
  }

}
