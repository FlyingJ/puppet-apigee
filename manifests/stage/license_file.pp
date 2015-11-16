class apigee::stage::license_file inherits ::apigee::stage {

  # put license file in place
  # TODO: retrieve content from Secret Server
  file { "${::apigee::license_location}":
    ensure  => 'file',
    content => "${::apigee::license_string}",
    owner   => 'root',
    group   => 'root',
    mode    => '400',
  }

}