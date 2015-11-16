node /^apigee-datastore-0[123].example.com$/ {

  class { '::apigee':
    edge_release           => '4.15.07.00',
    license_string         => "${::apigee_license_string}",
    component              => 'ds',
    pod                    => 'gateway',
    datacenter             => 'dc-1',
    bind_on_all_interfaces => false,
    management_ip          => "${::apigee_ms_ipaddress}",
    admin_email            => "${::apigee_admin_email}",
    admin_password         => "${::apigee_admin_password}",
    ldap_password          => "${::apigee_ldap_password}",
    ldap_use_remote_host   => true,
    ldap_ip                => "${::apigee_ldap_ipaddress}",
    ldap_port              => '10389',
    ldap_type              => '1',
    use_smtp               => false,
    use_zookeeper_cluster  => true,
    zookeeper_ips          => "${::apigee_datastore_ipaddresses}",
    zookeeper_client_ips   => "${::apigee_datastore_ipaddresses}",
    use_cassandra_cluster  => true,
    cassandra_ips          => "${::apigee_datastore_ipaddresses}",
    enable_analytics       => true,
  }

}

node 'apigee-ldap.example.com' {

  class { '::apigee':
    edge_release           => '4.15.07.00',
    license_string         => "${::apigee_license_string}",
    component              => 'ld',
    pod                    => 'gateway',
    datacenter             => 'dc-1',
    bind_on_all_interfaces => false,
    management_ip          => "${::apigee_ms_ipaddress}",
    admin_email            => "${::apigee_admin_email}",
    admin_password         => "${::apigee_admin_password}",
    ldap_password          => "${::apigee_ldap_password}",
    ldap_use_remote_host   => true,
    ldap_ip                => "${::apigee_ldap_ipaddress}",
    ldap_port              => '10389',
    ldap_type              => '1',
    use_smtp               => false,
    use_zookeeper_cluster  => true,
    zookeeper_ips          => "${::apigee_datastore_ipaddresses}",
    zookeeper_client_ips   => "${::apigee_datastore_ipaddresses}",
    use_cassandra_cluster  => true,
    cassandra_ips          => "${::apigee_datastore_ipaddresses}",
    enable_analytics       => true,
  }

}

node 'apigee-management-server.example.com' {

  class { '::apigee':
    edge_release           => '4.15.07.00',
    license_string         => "${::apigee_license_string}",
    component              => 'ms',
    pod                    => 'gateway',
    datacenter             => 'dc-1',
    bind_on_all_interfaces => false,
    management_ip          => "${::apigee_ms_ipaddress}",
    admin_email            => "${::apigee_admin_email}",
    admin_password         => "${::apigee_admin_password}",
    ldap_password          => "${::apigee_ldap_password}",
    ldap_use_remote_host   => true,
    ldap_ip                => "${::apigee_ldap_ipaddress}",
    ldap_port              => '10389',
    ldap_type              => '1',
    use_smtp               => false,
    use_zookeeper_cluster  => true,
    zookeeper_ips          => "${::apigee_datastore_ipaddresses}",
    zookeeper_client_ips   => "${::apigee_datastore_ipaddresses}",
    use_cassandra_cluster  => true,
    cassandra_ips          => "${::apigee_datastore_ipaddresses}",
    enable_analytics       => true,
  }

}

node 'apigee-router.example.com' {

  class { '::apigee':
    edge_release           => '4.15.07.00',
    license_string         => "${::apigee_license_string}",
    component              => 'r',
    pod                    => 'gateway',
    datacenter             => 'dc-1',
    bind_on_all_interfaces => false,
    management_ip          => "${::apigee_ms_ipaddress}",
    admin_email            => "${::apigee_admin_email}",
    admin_password         => "${::apigee_admin_password}",
    ldap_password          => "${::apigee_ldap_password}",
    ldap_use_remote_host   => true,
    ldap_ip                => "${::apigee_ldap_ipaddress}",
    ldap_port              => '10389',
    ldap_type              => '1',
    use_smtp               => false,
    use_zookeeper_cluster  => true,
    zookeeper_ips          => "${::apigee_datastore_ipaddresses}",
    zookeeper_client_ips   => "${::apigee_datastore_ipaddresses}",
    use_cassandra_cluster  => true,
    cassandra_ips          => "${::apigee_datastore_ipaddresses}",
    enable_analytics       => true,
  }

}

node 'apigee-message-processor.example.com' {

  class { '::apigee':
    edge_release           => '4.15.07.00',
    license_string         => "${::apigee_license_string}",
    component              => 'mp',
    pod                    => 'gateway',
    datacenter             => 'dc-1',
    bind_on_all_interfaces => false,
    management_ip          => "${::apigee_ms_ipaddress}",
    admin_email            => "${::apigee_admin_email}",
    admin_password         => "${::apigee_admin_password}",
    ldap_password          => "${::apigee_ldap_password}",
    ldap_use_remote_host   => true,
    ldap_ip                => "${::apigee_ldap_ipaddress}",
    ldap_port              => '10389',
    ldap_type              => '1',
    use_smtp               => false,
    use_zookeeper_cluster  => true,
    zookeeper_ips          => "${::apigee_datastore_ipaddresses}",
    zookeeper_client_ips   => "${::apigee_datastore_ipaddresses}",
    use_cassandra_cluster  => true,
    cassandra_ips          => "${::apigee_datastore_ipaddresses}",
    enable_analytics       => true,
  }

}

node 'apigee-qpid.example.com' {

  class { '::apigee':
    edge_release           => '4.15.07.00',
    license_string         => "${::apigee_license_string}",
    component              => 'qs',
    pod                    => 'gateway',
    datacenter             => 'dc-1',
    bind_on_all_interfaces => false,
    management_ip          => "${::apigee_ms_ipaddress}",
    admin_email            => "${::apigee_admin_email}",
    admin_password         => "${::apigee_admin_password}",
    ldap_password          => "${::apigee_ldap_password}",
    ldap_use_remote_host   => true,
    ldap_ip                => "${::apigee_ldap_ipaddress}",
    ldap_port              => '10389',
    ldap_type              => '1',
    use_smtp               => false,
    use_zookeeper_cluster  => true,
    zookeeper_ips          => "${::apigee_datastore_ipaddresses}",
    zookeeper_client_ips   => "${::apigee_datastore_ipaddresses}",
    use_cassandra_cluster  => true,
    cassandra_ips          => "${::apigee_datastore_ipaddresses}",
    enable_analytics       => true,
  }

}

node 'apigee-analytics.example.com' {

  class { '::apigee':
    edge_release           => '4.15.07.00',
    license_string         => "${::apigee_license_string}",
    component              => 'ps',
    pod                    => 'gateway',
    datacenter             => 'dc-1',
    bind_on_all_interfaces => false,
    management_ip          => "${::apigee_ms_ipaddress}",
    admin_email            => "${::apigee_admin_email}",
    admin_password         => "${::apigee_admin_password}",
    ldap_password          => "${::apigee_ldap_password}",
    ldap_use_remote_host   => true,
    ldap_ip                => "${::apigee_ldap_ipaddress}",
    ldap_port              => '10389',
    ldap_type              => '1',
    use_smtp               => false,
    use_zookeeper_cluster  => true,
    zookeeper_ips          => "${::apigee_datastore_ipaddresses}",
    zookeeper_client_ips   => "${::apigee_datastore_ipaddresses}",
    use_cassandra_cluster  => true,
    cassandra_ips          => "${::apigee_datastore_ipaddresses}",
    enable_analytics       => true,
  }

}
