class apigee::stage::jdk_install inherits ::apigee {

  # should be a durned repo-package combo
  exec { "install ${::apigee::jdk_package} from ${::apigee::jdk_install_baseurl}":
    command => "${::apigee::package_install} ${::apigee::jdk_install_baseurl}/${::apigee::jdk_package}",
    creates => "${::apigee::jdk_path}",
  }

}