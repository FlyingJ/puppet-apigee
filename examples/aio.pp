node 'apigee-aio.example.com' {

  class { '::apigee':
    edge_release           => '4.15.07.00',
    license_string         => "$::apigee_license_string",
    component              => 'aio',
    pod                    => 'gateway',
    datacenter             => 'dc-1',
    bind_on_all_interfaces => false,
    management_ip          => "$::ipaddress",
    admin_email            => "$::apigee_admin_email",
    admin_password         => "$::apigee_admin_password",
    ldap_password          => "$::apigee_ldap_password",
    ldap_use_remote_host   => false,
    ldap_type              => '1',
    use_smtp               => false,
    use_zookeeper_cluster  => false,
    zookeeper_ips          => "$::ipaddress",
    zookeeper_client_ips   => "$::ipaddress",
    use_cassandra_cluster  => false,
    cassandra_ips          => "$::ipaddress",
    enable_analytics       => true,
  }

}
