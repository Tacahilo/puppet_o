class nginx {

  include nginx::install
  include nginx::yumrepo
  include nginx::file

}
