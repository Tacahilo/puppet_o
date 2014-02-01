define git::clone (
  $path,
  $repo = $name,
) {

  require ::git

  exec { "git_clone_${name}":
    command => "git clone --recursive ${repo} ${path}",
    path    => '/usr/bin:/usr/local/bin',
    creates => "${path}/.git",
    timeout => 0,
  }

}
