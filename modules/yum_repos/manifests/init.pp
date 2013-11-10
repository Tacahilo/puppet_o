class yum_repos {

  include yum_repos::epel
  include yum_repos::puppetlabs

}
