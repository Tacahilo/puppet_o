class base {

  include ::yum_repos
  include ::packages
  include ::git
  include ::selinux
  include ::ntp

}
