module Librarian
  module Puppet
    module Vagrant
      class Middleware
        def initialize(app, env)
          @app = app
        end
        def call(env)
          env[:ui].info 'Running librarian puppet'
          result = system 'librarian-puppet install'
          unless result
            env[:ui].error 'Librarian Puppet failed to run, do you have a valid Puppetfile?'
            exit
          end
          @app.call(env)
        end
      end
    end
  end
end

Vagrant.actions[:up].insert(Vagrant::Action::VM::Provision, Librarian::Puppet::Vagrant::Middleware)
Vagrant.actions[:provision].insert(Vagrant::Action::VM::Provision, Librarian::Puppet::Vagrant::Middleware)
