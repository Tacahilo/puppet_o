class sc {

  include ::base
#  include ::znc
#  include ::weechat
  include ::xbuild
  include ::sc::ruby

  Class['::base']
  -> Class['::xbuild']
#  -> Class['znc']
#  -> Class['weechat']

  Class['::xbuild']
  -> Class['::sc::ruby']
}
