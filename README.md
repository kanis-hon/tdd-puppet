tdd-puppet
==========
This project was created for demonstrating samples of using rspec-puppet test framework in Puppet deployment.

Prerequisite
------------
1. Puppet
if you don't have Puppet installed on testing machine, you'll need to use the following command.
$ gem install puppet

2. rspec-puppet
if you don't have rspec-puppet installed on testing machine, you'll need to use the following command.
$ gem install rspec-puppet

Getting start
-------------
Puppet module structure in this repository, I created modules as a root directory of all puppet modules in this project.
|- [modules]
   |- [module_name]
      |- [files]
      |- [lib]
      |- [manifests]
      |- [templates]

for example:
|- [modules]
   |- [sample]
      |- [files]
      |- [manifests]
        |- init.pp
        |- service.pp
        |- ...
      |- [templates]
        |- config.conf
        |- ...

After adding spec and unit test
|- [modules]
   |- [sample]
      |- [files]
      |- [manifests]
        |- init.pp
        |- service.pp
        |- ...
      |- [templates]
        |- config.conf
        |- ...
      |- .fixture.yml
      |- Rakefile
      |- [spec]
        |- [classes]
          |- sample_spec.rb
          |- service_spec.rb
        |- [defines]
          |- sumtype_spec.rb
        |- [fixtures]
          |- [modules]
             |- [sample]
                |- [files]     -- symbolic link to -> /modules/sample/files
                |- [manifests] -- symbolic link to -> /modules/sample/manifests
                |- [templates] -- symbolic link to -> /modules/sample/templates
        |- spec_helper.rb

Add Rakefile to module directory [see https://github.com/kanis-hon/tdd-puppet/blob/master/modules/sample/Rakefile], there are 2 tasks that are lint and spec. 
- run link task from sample module directory for checking puppet manifests (*.pp)
$ rake lint

- run spec from sample module directory for running unit tests (/spec/*.rb)
$ rake spec
