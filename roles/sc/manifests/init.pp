class sc {

  include base
  include znc
  include weechat

  Class['base']
  -> Class['znc']
  -> Class['weechat']

}
