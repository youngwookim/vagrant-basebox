vagrant-basebox
===============

CentOS 5.8 x86_64
CentOS 6.3 x86_64

Building a box
    $ veewee vbox build 'centos-6.3-x86_64'
    $ vagrant package --base 'centos-6.3-x86_64' --output 'centos-6.3-x86_64.box'
    $ vagrant box add 'centos-6.3-x86_64' 'centos-6.3-x86_64.box'
