sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# EPEL
rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget sudo rsync ntp ntpdate python-setuptools parted bzip2 unzip yum-utils sudo createrepo httpd

# Services
/sbin/chkconfig --level 2345 iptables off
/sbin/chkconfig --level 2345 ip6tables off
/sbin/chkconfig --level 2345 httpd off

# Installing vagrant keys
mkdir -pm 700 /home/vagrant/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

# Installing the virtualbox guest additions
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
cd /tmp
mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /home/vagrant/VBoxGuestAdditions_*.iso

# Cleanup
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso

# Zero out the free space to save space in the final image:
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
