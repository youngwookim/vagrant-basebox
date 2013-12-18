Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size=> '2048',
  :disk_size => '10140',
  :disk_format => 'VDI',
  :hostiocache => 'off', 
  :ioapic => 'on',
  :os_type_id => 'RedHat_64',
  :iso_file => "CentOS-6.4-x86_64-bin-DVD1.iso",
  :iso_src => "http://ftp.daum.net/centos/6/isos/x86_64/CentOS-6.4-x86_64-bin-DVD1.iso",
  :iso_md5 => "0128cfc7c86072b13ee80dd013e0e5d7",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "postinstall.sh"
  ],
  :postinstall_timeout => 10000
})
