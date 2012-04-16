#vagrant-puppet-template

Either [Forke this repo](http://help.github.com/fork-a-repo/) or add it as a submodule to kickstart your own project.

    git submodule add git@github.com:semanticdreamer/vagrant-puppet-template.git ./vagrant-puppet
    git submodule init && git submodule update

##Setup

Initialize and update submodule(s) for the *puppetlabs/apt* submodule:

    cd ./vagrant-puppet && git submodule init && git submodule update

##Dependencies

* [puppetlabs/apt](https://github.com/puppetlabs/puppet-apt) - Puppet module to help manage Apt.
* [puppetlabs/stdlib](https://github.com/puppetlabs/puppetlabs-stdlib) - Puppet module providing a "standard library" of resources for developing Puppet Modules.
* [puppet-rvm](https://github.com/blt04/puppet-rvm) - Puppet module for installing and using RVM (Ruby Version Manager).