class apigee::stage inherits ::apigee {

  # generate silent config
  class { '::apigee::stage::silent_config': }
  contain '::apigee::stage::silent_config'

  # put license file in place
  class { 'apigee::stage::license_file': }
  contain '::apigee::stage::license_file'

  class { '::apigee::stage::tmp_exec': }
  contain '::apigee::stage::tmp_exec'

  # need a jdk
  class { '::apigee::stage::jdk_install': }
  contain '::apigee::stage::jdk_install'

  # copy and extract the archive
  # leave it behind during testing
  case ${::apigee::edge_release} {
    '4.14.04.00': { 
      $archive_basename = 'apigee-gateway'
    }
    '4.15.07.00': { 
      $archive_basename = 'apigee-edge'
    }
    default: { fail("Apigee Edge version (${::apigee::edge_release}) not recognized") }
  }

  # ::apigee_ftp_username
  # ::apigee_ftp_password
  # these can be set on the command line via FACTER_apigee_ftp_username='username' FACTER_apigee_ftp_password='password' puppet
  # they can be brought in from hiera, or some other method, as well...
  archive { "${::apigee::install_root}/${archive_basename}-${::apigee::edge_release}.zip":
    ensure       => 'present',
    source       => "ftp://ftp.apigee.com/apigee_enterprise_OPDK/API_Services/${archive_basename}-${::apigee::edge_release}.zip",
    username     => "${::apigee_ftp_username}",
    password     => "${::apigee_ftp_password}",
    extract      => true,
    extract_path => "${::apigee::install_root}",
    creates      => "${::apigee::install_root}/${archive_basename}-${::apigee::edge_release}",
    cleanup      => false,
  }

}