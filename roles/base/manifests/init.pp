class base {

  include ::yum_repos
  include base::package
  include ::git
  include ::selinux
  include ::ntp

}
