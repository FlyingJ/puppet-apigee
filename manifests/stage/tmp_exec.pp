class apigee::stage::tmp_exec inherits ::apigee {

  # snappy loads from /tmp during install
  # noexec -> noinstall
  exec { 'remount /tmp with exec':
    command => '/bin/mount -oremount,exec /tmp',
    onlyif  => '/bin/mount | /bin/grep /tmp | /bin/grep noexec >/dev/null 2>/dev/null',
  }

}