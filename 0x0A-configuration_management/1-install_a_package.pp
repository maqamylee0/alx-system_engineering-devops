package { 'python3-pip':
  ensure   => 'present',
}
package { 'werkzueg':
  ensure   => '2.1.1',
  provider => 'pip3',
}
package { 'flask':
  ensure   => '2.1.0',
  require  => Package['werkzeug'],
  provider => 'pip3',
}
