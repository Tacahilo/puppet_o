class sc {

  include ::base
  include ::munin
  include ::sc::package
  include ::sc::file
  include ::xbuild
  include ::sc::ruby
  include ::sc::nginx
  include ::sc::wiki
  include ::sc::znc

     Class['::base']
  -> Class['::munin']
  -> Class['::sc::package']
  -> Class['::sc::file']
  -> Class['::xbuild']
  -> Class['::sc::ruby']
  -> Class['::sc::nginx']
  -> Class['::sc::wiki']
  -> Class['::sc::znc']

}
