#vagrant-puppet-template

Either [Forke this repo](http://help.github.com/fork-a-repo/) or add it as a submodule to kickstart your own project.

    git submodule add git@github.com:semanticdreamer/vagrant-puppet-template.git ./vagrant-puppet
    git submodule init && git submodule update
    cd ./vagrant-puppet && git submodule init && git submodule update && cd ../

##Requirements

* Vagrant box `debian-6.0.4-squeeze-server`. For build instructions and requirements see project [veewee-vagrant-box-definitions][veewee-vagrant-box-definitions].    

##Usage

If used as a submodule named `vagrant-puppet` simply create your `Vagrantfile` by copying the `Vagrantfile.submodule` into your project root directory:

    cp ./vagrant-puppet/Vagrantfile.submodule ./Vagrantfile

Next: provision the [*Vagrant*][vagrant] environment using [*Puppet*][puppet].

Due to the way *Puppet* works, we need to run `vagrant provision` once after `vagrant up`. This is, because the first time *Puppet* is run (on `vagrant up`) it installs `rvm`. The second time it is run, it installs any *rubies* and *gems* you have configured.

Note: Ignoring the red console messages/ warnings (i.e. `stdin: is not a tty`, `tput: unknown terminal "unknown"` and `warning: class variable access from toplevel`) should be ok ;-).

##Dependencies

The following projects are used as submodules:

* [puppetlabs/apt](https://github.com/puppetlabs/puppetlabs-apt) - Puppet module to help manage Apt.
* [puppetlabs/stdlib](https://github.com/puppetlabs/puppetlabs-stdlib) - Puppet module providing a "standard library" of resources for developing Puppet Modules.
* [puppet-rvm](https://github.com/blt04/puppet-rvm) - Puppet module for installing and using RVM (Ruby Version Manager).



[Puppet]: http://puppetlabs.com/ "Puppet"
[Vagrant]: http://vagrantup.com/ "Vagrant"
[veewee-vagrant-box-definitions]: https://github.com/semanticdreamer/veewee-vagrant-box-definitions