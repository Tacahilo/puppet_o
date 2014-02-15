class munin {

  include ::munin::install
  include ::munin::service

     Class['::munin::install']
  -> Class['::munin::service']

}
