class apigee::setup inherits ::apigee {

  exec { 'configure apigee component':
    command => "${::apigee::install_root}/apigee4/share/installer/apigee-setup.sh -f ${::apigee::silent_config} -p ${::apigee::component}",
    onlyif  => '/bin/egrep \'MSIP=""\' /data/apigee4/bin/apigee-env.sh >/dev/null',
    timeout => '0',
  }

}