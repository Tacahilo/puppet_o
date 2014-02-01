class sc::wiki {

  include ::sc::wiki::install
  include ::sc::wiki::bundle
  include ::sc::wiki::file

     Class['::sc::wiki::install']
  -> Class['::sc::wiki::file']
  -> Class['::sc::wiki::bundle']

}
