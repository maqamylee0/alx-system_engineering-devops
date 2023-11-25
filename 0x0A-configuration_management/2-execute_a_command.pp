exec { 'kill_killmenow_process':
  command     => '/usr/bin/pkill killmenow',
  path        => ['/bin', '/usr/bin'],
  refreshonly => true,
}
