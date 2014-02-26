class clamd {

     class{'clamd::install':}
  -> class{'clamd::config':}
  ~> class{'clamd::service':}

}
