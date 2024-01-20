# installs flask

package { 'werkzeug' :
  ensure   => '2.1.1',
  provider => 'pip',
}

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => 'werkzeug'
}
