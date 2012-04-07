#vagrant-puppet-template

[Forke this repo](http://help.github.com/fork-a-repo/) if you want to use this project to kickstart your own project.

##Setup

Initialize and update submodule(s) for the *puppetlabs/apt* submodule:

    cd ./puppet/modules/apt && git submodule init && git submodule update

##Dependencies

* [puppetlabs/apt](https://github.com/puppetlabs/puppet-apt) - Puppet module to help manage Apt.
* [puppetlabs/stdlib](https://github.com/puppetlabs/puppetlabs-stdlib) - Puppet module providing a "standard library" of resources for developing Puppet Modules.
* [puppet-rvm](https://github.com/blt04/puppet-rvm) - Puppet module for installing and using RVM (Ruby Version Manager).