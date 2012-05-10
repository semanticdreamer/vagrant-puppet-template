/**
 * Add users and groups
 */
user { "vagrant":
    ensure => "present"
}
group { "puppet":
  ensure => "present"
}
/**
 * Stages
 */
stage {"pre": before => Stage["rvm-install"]}
/**
 * Classes
 */
class { "apt":
    stage => "pre",
    always_apt_update => true
}
# class { 'nodejs':
#     version => 'stable'
# }
/**
 * Include modules
 */
include apt
include rvm
include ruby
#include nodejs