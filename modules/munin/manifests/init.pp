class munin {

  include ::munin::install
  include ::munin::node

     Class['::munin::install']
  -> Class['::munin::node']

}
