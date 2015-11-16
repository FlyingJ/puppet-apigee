class apigee (
  $edge_release           = $::apigee::params::edge_release,
  $install_root           = $::apigee::params::install_root,
  $data_root              = $::apigee::params::data_root,
  $component              = $::apigee::params::component,
  $jdk_install_baseurl    = $::apigee::params::jdk_install_baseurl,
  $jdk_package            = $::apigee::params::jdk_package,
  $jdk_path               = $::apigee::params::jdk_path,
  $package_install        = $::apigee::params::package_install,
  $license_location       = $::apigee::params::license_location,
  $license_string         = $::apigee::params::license_string,
  $silent_config          = $::apigee::params::silent_config,
  $pod                    = $::apigee::params::pod,
  $datacenter             = $::apigee::params::datacenter,
  $bind_on_all_interfaces = $::apigee::params::bind_on_all_interfaces,
  $management_ip          = $::apigee::params::management_ip,
  $admin_email            = $::apigee::params::admin_email,
  $admin_password         = $::apigee::params::admin_password,
  $ldap_password          = $::apigee::params::ldap_password,
  $ldap_use_remote_host   = $::apigee::params::ldap_use_remote_host,
  $ldap_ip                = $::apigee::params::ldap_host,
  $ldap_port              = $::apigee::params::ldap_port,
  $ldap_type              = $::apigee::params::ldap_type,
  $ldap_sid               = $::apigee::params::ldap_sid,
  $ldap_peer              = $::apigee::params::ldap_peer,
  $use_smtp               = $::apigee::params::use_smtp,
  $smtp_ip                = $::apigee::params::smtp_host,
  $smtp_port              = $::apigee::params::smtp_port,
  $smtp_user              = $::apigee::params::smtp_user,
  $smtp_password          = $::apigee::params::smtp_password,
  $smtp_use_ssl           = $::apigee::params::smtp_use_ssl,
  $use_zookeeper_cluster  = $::apigee::params::use_zookeeper_cluster,
  $zookeeper_ips          = $::apigee::params::zookeeper_hosts,
  $zookeeper_client_ips   = $::apigee::params::zookeeper_client_hosts,
  $use_cassandra_cluster  = $::apigee::params::use_cassandra_cluster,
  $cassandra_ips          = $::apigee::params::cassandra_hosts,
  $enable_analytics       = $::apigee::params::enable_analytics,
) inherits ::apigee::params {

  # input validation
  unless $license_string { fail('License string is not defined. Need explicit definition of license_string attribute') }
  unless $admin_email { fail('Apigee admin email address is not defined. Need explicit definition of admin_email attribute') }
  unless $admin_password { fail('Apigee admin password is not defined. Need explicit definition of admin_password attribute') }
  unless $ldap_password { fail('Apigee LDAP admin password is not defined. Need explicit definition of ldap_password attribute') }
  unless $component { fail('Unable to determine Apigee component to install, configure. Need explicit definition of component attribute') }

  class { '::apigee::stage': }
  class { '::apigee::install': require => Class['::apigee::stage'] }
  class { '::apigee::setup':   require => Class['::apigee::install'] }
  class { '::apigee::service': require => Class['::apigee::setup'] }

}
