class sc::munin {

  include ::munin

  package { 'munin-cgi':
    ensure => installed,
  }

  file { '/etc/munin/munin.conf':
    source => 'puppet:///modules/sc/etc/munin/munin.conf',
    owner  => 'root',
    group  => 'root',
  }

  file { '/etc/munin/munin-node.conf':
    source => 'puppet:///modules/sc/etc/munin/munin-node.conf',
    owner  => 'root',
    group  => 'root',
  }

  file { '/etc/munin/plugins':
    ensure  => directory,
    source  => 'puppet:///modules/sc/etc/munin/plugins',
    recurse => true,
    owner  => 'root',
    group  => 'root',
  }

  $server_name = 'sc.hifumi.info'
  file { '/etc/nginx/conf.d/munin.conf':
    content => template('sc/etc/nginx/conf.d/munin.conf.erb'),
  }

}
