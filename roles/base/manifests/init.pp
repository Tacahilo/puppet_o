class base {

     class{'::selinux':}
  -> class{'::yum_repos':}
  -> class{'base::package':}
  -> class{'base::file':}

}
