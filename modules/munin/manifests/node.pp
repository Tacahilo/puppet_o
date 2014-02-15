class munin::node {

  include ::munin::node::install
  include ::munin::node::service

     Class['::munin::node::install']
  -> Class['::munin::node::service']

}
