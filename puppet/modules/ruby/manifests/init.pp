class ruby {
   rvm::system_user { vagrant: ; }
   
   if $rvm_installed == "true" {
     rvm_system_ruby {
         "ruby-1.9.2-p290":
             ensure => "present",
             default_use => true;
         }
     rvm_gem {
        "puppet":
         name => "puppet",
         ruby_version => "ruby-1.9.2-p290",
         ensure => latest,
         require => Rvm_system_ruby["ruby-1.9.2-p290"];
     }
     rvm_gem {
        "bundler":
         name => "bundler",
         ruby_version => "ruby-1.9.2-p290",
         ensure => latest,
         require => Rvm_system_ruby["ruby-1.9.2-p290"];
     }
     #Fix for Gem repository directories are no longer world- (https://github.com/wayneeseguin/rvm/issues/398) and due to wrong umask in current rubygems version (https://github.com/rubygems/rubygems/pull/220) - not group-writable either. 
     file { "/usr/local/rvm/gems/ruby-1.9.2-p290/cache":
       mode    => 775,
       group   => "rvm"
     }
     file { "/usr/local/rvm/gems/ruby-1.9.2-p290/doc":
       mode    => 775,
       group   => "rvm"
     }
     file { "/usr/local/rvm/gems/ruby-1.9.2-p290/gems":
       mode    => 775,
       group   => "rvm"
     }
   }
}