# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require 'librarian/puppet/vagrant/version'

Gem::Specification.new do |gem|
  gem.name          = "librarian-puppet-vagrant"
  gem.version       = Librarian::Puppet::Vagrant::VERSION
  gem.authors       = ["Gareth Rushgrove"]
  gem.email         = ["gareth@morethanseven.net"]
  gem.description   = ""
  gem.summary       = ""
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
