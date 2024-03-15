# extend ULIMIT
exec { 'extend_ulimit':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}

# Restart nginx
-> exec { 'nginx_restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
