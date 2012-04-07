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
 * Include modules
 */
include apt