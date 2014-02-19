class munin {

     class{'munin::install':}
  -> class{'munin::node':}

}
