class apigee::install inherits ::apigee {

  # some basic configuration and copy of code base to ${install_dir}/apigee4
  exec { 'prepare apigee code base':
    command => "${::apigee::install_root}/${::apigee::stage::archive_basename}-${::apigee::edge_release}/apigee-install.sh -r ${::apigee::install_root} -d ${::apigee::data_root} -j ${::apigee::jdk_path}",
    creates => "${::apigee::install_root}/apigee4",
    require => [ File["${::apigee::silent_config}"],
                 File["${::apigee::license_location}"],
                 Exec['remount /tmp with exec'],
                 Exec["install ${::apigee::jdk_package} from ${jdk_install_baseurl}"],
                 Archive["${::apigee::install_root}/${::apigee::stage::archive_basename}-${::apigee::edge_release}.zip"],
               ],
  }

}