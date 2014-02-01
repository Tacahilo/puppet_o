class sc::nginx {

  include ::nginx
  include ::sc::nginx::user_group
  include ::sc::nginx::file
  include ::sc::nginx::config

     Class['::nginx::yumrepo']
  -> Class['::nginx::install']
  -> Class['::sc::nginx::user_group']
  -> Class['::nginx::file']
  -> Class['::sc::nginx::file']
  -> Class['::sc::nginx::config']
  -> Class['::nginx::service']

}
