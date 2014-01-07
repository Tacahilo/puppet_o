class sc {

  include base
  include znc
  include weechat
  include xbuild

  Class['base']
  -> Class['xbuild']
#  -> Class['znc']
#  -> Class['weechat']

}
