# creates a file school in tmp

$path_school = '/tmp/school'

file { $path_school:
  path    => $path_school,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet'
}
