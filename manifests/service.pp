class apigee::service inherits ::apigee {

  exec { 'configure apigee components to start on boot':
    command => '/data/apigee4/bin/set-autostart.sh',
    unless  => '/bin/ls /etc/init.d/apigee-* >/dev/null 2>/dev/null',
  }

}