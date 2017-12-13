default['workstation']['sssd']['domain'] = ''
# filter_users - do not send these to LDAP for verification - local accounts
default['workstation']['sssd']['filter_users'] = 'root,bin,daemon,adm,lp,sync,shutdown,halt,mail,operator,games,ftp,nobody,systemd-timesync,systemd-network,systemd-resolve,systemd-bus-proxy,dbus,polkitd,geoclue,rtkit,avahi,usbmuxd,rpc,unbound,radvd,qemu,apache,colord,abrt,saslauth,openvpn,pulse,setroubleshoot,gdm,rpcuser,nfsnobody,nm-openvpn,nm-openconnect,gnome-initial-setup,sshd,chrony,tcpdump,systemd-coredump,oprofile,epmd,munge,mysql,postgres,ntp,postfix'
default['workstation']['sssd']['filter_groups'] = 'root,bin,daemon,adm,lp,sync,shutdown,halt,mail,operator,games,ftp,nobody,systemd-timesync,systemd-network,systemd-resolve,systemd-bus-proxy,dbus,polkitd,geoclue,rtkit,avahi,usbmuxd,rpc,unbound,radvd,qemu,apache,colord,abrt,saslauth,openvpn,pulse,setroubleshoot,gdm,rpcuser,nfsnobody,nm-openvpn,nm-openconnect,gnome-initial-setup,sshd,chrony,tcpdump,systemd-coredump,oprofile,epmd,munge,mysql,postgres,ntp,postfix'
# kerberos
default['workstation']['sssd']['kerberos_realm'] = ''
default['workstation']['sssd']['kerberos_server'] = ''
# ldap_trust = path to where we install the ldap public certificate - FIXME needs to be added outside this cookbook - can we use system trust?
default['workstation']['sssd']['ldap_dc'] = ''
default['workstation']['sssd']['ldap_server'] = ''
default['workstation']['sssd']['ldap_trust'] = '/etc/openldap/certs/zoo.pem'
