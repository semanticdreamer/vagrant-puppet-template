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
# class { 'build-couchdb':
#     install_dir => '/home/vagrant',
#     couchdb_version_tag => '1.2.0',
#     build_user => 'vagrant',
#     bind_address => '0.0.0.0',
#     end_admin_party => true,
#     admin_user => 'admin',
#     admin_pwd => 'admin',
#     daemon => true
# }
#class { 'couchdb-debian':
#     version => '1.1.1-2',
#     bind_address => '0.0.0.0'
#}
/**
 * Include modules
 */
include apt
include rvm
include ruby
#include nodejs
#include build-couchdb
#include couchdb-debian