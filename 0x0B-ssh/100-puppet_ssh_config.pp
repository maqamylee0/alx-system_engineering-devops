# configure ssh_config file to refuse password

file {'/etc/ssh/ssh_config':
	ensure	=> present,
	content	=> @(EOF),
		Host*
			PasswordAuthentication no
			IdentityFile ~/.ssh/school
EOF
}
