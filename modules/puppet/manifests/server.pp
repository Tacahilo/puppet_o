class puppet::server {

     class{'puppet::server::install':}
  -> class{'puppet::server::service':}

}
