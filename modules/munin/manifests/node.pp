class munin::node {

     class{'munin::node::install':}
  -> class{'munin::node::service':}

}
