class ruby {
   rvm::system_user { vagrant: ; }
   
   if $rvm_installed == "true" {
     rvm_system_ruby {
         "ruby-1.9.2-p320":
             ensure => "present",
             default_use => false;
         }
     rvm_gem {
        "puppet":
         name => "puppet",
         ruby_version => "ruby-1.9.2-p320",
         ensure => latest,
         require => Rvm_system_ruby["ruby-1.9.2-p320"];
     }
     rvm_gem {
        "bundler":
         name => "bundler",
         ruby_version => "ruby-1.9.2-p320",
         ensure => latest,
         require => Rvm_system_ruby["ruby-1.9.2-p320"];
     }
     #Fix for Gem repository directories are no longer world- (https://github.com/wayneeseguin/rvm/issues/398) and due to wrong umask in current rubygems version (https://github.com/rubygems/rubygems/pull/220) - not group-writable either. 
     file { "/usr/local/rvm/gems/ruby-1.9.2-p320/cache":
       mode    => 775,
       group   => "rvm"
     }
     file { "/usr/local/rvm/gems/ruby-1.9.2-p320/doc":
       mode    => 775,
       group   => "rvm"
     }
     file { "/usr/local/rvm/gems/ruby-1.9.2-p320/gems":
       mode    => 775,
       group   => "rvm"
     }
   }
}