#puppet file to set custom header

package { 'nginx':
	ensure => 'installed',
}
exec {'add_header':
	provider	=>	shell,
	environment     => ["HOST=${hostname}"],
	command   	=>	'sudo sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/include \/etc\/nginx\/sites-enabled\/\*;\n\tadd_header X-Served-By \"$HOST\";/" /etc/nginx/nginx.conf',
	before	        =>	Exec['restart Nginx'],
}

exec {'restart Nginx':
	provider	=>	shell,
	command	=>	'sudo service nginx restart',
}
