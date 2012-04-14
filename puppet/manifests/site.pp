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
# stage {"pre": before => Stage["rvm-install"]}
stage {"pre": before => Stage["main"]}
/**
 * Classes
 */
class { "couchdb-debian":
    version => "1.1.1-2",
    bind_address => "0.0.0.0"
}
class { "apt":
    stage => "pre",
    always_apt_update => true
}
/**
 * Include modules
 */
include apt
#include rvm
include couchdb-debian
#include build-couchdb