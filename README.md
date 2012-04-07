#vagrant-puppet-template

[Forke this repo](http://help.github.com/fork-a-repo/) if you want to use this project as the starting point for your own project.

##setup

Initialize and update submodules for the *puppetlabs/apt* submodule:

    cd ./vagrant-puppet/puppet/modules/apt && git submodule init && git submodule update

##Dependencies

###Puppet Modules

* **puppetlabs/apt** - Puppet module to help manage Apt.
  * [Puppet Forge Homepage](https://github.com/puppetlabs/puppet-apt)
  * [Github Project](https://github.com/puppetlabs/puppet-apt)
* **puppetlabs/stdlib** - This module provides a "standard library" of resources for developing Puppet Modules.
  * [Puppet Forge Homepage](http://forge.puppetlabs.com/puppetlabs/stdlib)
  * [Github Project](https://github.com/puppetlabs/puppetlabs-stdlib)
* **puppet-rvm** - A puppet module for installing and using RVM (Ruby Version Manager).
  * [Github Project](https://github.com/blt04/puppet-rvm)