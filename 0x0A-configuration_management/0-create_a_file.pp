$path_school = '/tmp/school'

file { $path_school :
  path    => $path_school,
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet'
}
