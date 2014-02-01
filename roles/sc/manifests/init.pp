class sc {

  include ::base
  include ::xbuild
  include ::sc::package
  include ::sc::file
  include ::sc::ruby
  include ::sc::nginx
  include ::sc::wiki

     Class['::base']
  -> Class['::sc::package']
  -> Class['::sc::file']
  -> Class['::xbuild']
  -> Class['::sc::ruby']
  -> Class['::sc::nginx']
  -> Class['::sc::wiki']

}
