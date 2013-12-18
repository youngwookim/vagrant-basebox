vagrant-basebox
===============

CentOS 6.4 x86_64

Install Vagrant
```
......
```

Install veewee
```
$ cd <path_to_workspace>
$ git clone https://github.com/jedi4ever/veewee.git
$ cd veewee
$ gem install bundler
$ bundle install
```

Building a basebox
```
$ BUNDLE_GEMFILE=~ywkim/tmp/veewee/Gemfile bundle exec veewee vbox build 'centos-6.4-x86_64' --force

$ vagrant package --base 'centos-6.4-x86_64' --output 'centos-6.4-x86_64.box'

$ vagrant box add 'centos-6.4-x86_64' 'centos-6.4-x86_64.box'
```
