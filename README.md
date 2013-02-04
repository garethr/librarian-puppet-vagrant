
Simple Vagrant middleware which runs `librarian-puppet install` before
each `vagrant up` and `vagrant provision`.

It's up to you to make sure you have librarian puppet installed and
available on your path. To use this just add the following to your
Vagrantfile:

    require 'librarian/puppet/vagrant'  
