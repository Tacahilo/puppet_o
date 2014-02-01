class sc {

  include ::base
  include ::xbuild
  include ::sc::package
  include ::sc::ruby
  include ::sc::nginx
  include ::sc::wiki

     Class['::base']
  -> Class['::sc::package']
  -> Class['::xbuild']
  -> Class['::sc::ruby']
  -> Class['::sc::nginx']
  -> Class['::sc::wiki']

}
