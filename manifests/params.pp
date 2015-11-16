class apigee::params {

  $edge_release         = '4.15.07.00'
  $install_root         = '/opt'
  $data_root            = '/opt'
  $component            = undef  
  $jdk_path             = '/usr/java/jdk1.7.0_80'
  $jdk_package          = 'jdk-7u80-linux-x64.rpm'
  $package_install      = '/usr/bin/yum -y install -d 0 -e 0'
  $jdk_install_baseurl  = 'http://download.oracle.com/otn-pub/java/jdk/7u80-b15/'
  $silent_config        = '/root/silent.config'
  $license_location     = '/root/apigee.license.txt'
  $license_string       = undef

  # silent config parameters
  $pod                    = 'gateway'
  $datacenter             = 'dc-1'
  $bind_on_all_interfaces = false
  $management_ip          = undef
  $admin_email            = undef
  $admin_password         = undef
  $ldap_password          = undef
  $ldap_use_remote_host   = false
  $ldap_ip                = undef
  $ldap_port              = undef
  # this is 'no replication' openldap in 4.15.07.00
  # NOTE: 1 -> ApacheDS for 4.14.xx.xx
  $ldap_type              = '1'
  $ldap_sid               = undef
  $ldap_peer              = undef
  $use_smtp               = false
  $smtp_ip                = undef
  $smtp_port              = undef
  $smtp_user              = undef
  $smtp_password          = undef
  $smtp_use_ssl           = undef
  $use_zookeeper_cluster  = true
  $zookeeper_ips          = undef
  $zookeeper_client_ips   = undef
  $use_cassandra_cluster  = true
  $cassandra_ips          = undef
  $enable_analytics       = false

}
