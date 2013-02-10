
Simple Vagrant middleware which runs `librarian-puppet install` before
each `vagrant up` and `vagrant provision`.

To install you can run

    vagrant gem install librarian-puppet-vagrant

It's up to you to make sure you have librarian puppet installed and
available on your path. To use this just add the following to your
Vagrantfile:

    require 'librarian/puppet/vagrant'  
