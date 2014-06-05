#futevima

The *futevima* (from *Functional Test Virtual Machine*) is a virtual machine which allows us to run functional tests
automatically on the Websites we develop.

It uses:

* [Vagrant](http://vagrantup.com)
* [Composer](https://getcomposer.org)
* [Behat](http://behat.org)
* [Mink](http://mink.behat.org)
* [Goutte](http://mink.behat.org/#gouttedriver)
* [Selennium](http://docs.seleniumhq.org/)

## Usage

### Prerequisites

You'll need to install Vagrant and VirtualBox in your machine. In an Ubuntu
14.04 Trusty machine you just need to type:

    sudo apt-get install vagrant virtualbox -y

### Up

*futevima* uses a really simple Vagrant virtual box with some shell
provisioning scripts. In order to run it, just go to the project directory and
type:

    vagrant up

This command will download the box and start and provision it installing
composer, behat and its extensions and selenium server.

### Running the tests

There are two example tests inside the `features` folder. To execute them you
have to ssh to the virtual machine with:

    vagrant ssh

and execute:

    cd /vagrant
    /vendor/bin/behat
