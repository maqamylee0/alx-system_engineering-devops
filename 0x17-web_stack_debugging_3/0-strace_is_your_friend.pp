# Define parameters
$config_file = '/var/www/html/wp-settings.php'
$search_string = 'phpp'
$replace_string = 'php'

# Execute sed command to replace strings
exec { 'edit_file':
  command   => "/bin/sed -i 's/${search_string}/${replace_string}/g' ${config_file}",
  path      => ['/bin','/usr/bin'],
  onlyif    => "test -f ${config_file}",  # Check if file exists before executing
  logoutput => true,  # Log command output for debugging
}