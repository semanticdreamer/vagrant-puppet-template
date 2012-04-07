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
class {"apt": stage => "pre"}
/**
 * Include modules
 */
include apt
include rvm