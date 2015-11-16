class apigee::stage::silent_config inherits ::apigee::stage {

  file { "${::apigee::silent_config}":
    ensure  => 'file',
    content => template('apigee/silent.config.erb'),
    owner   => 'root',
    group   => 'root',
    # this file will hold secrets
    mode    => '0400',
  }

}