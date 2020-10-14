class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCqUGpxCQmMFWf+BMnVth4Rv3lCgOT9M+OEqDKOTTbqGN6i5C2xVxZDhkjnGCntPtHpgC95Wa6TQXRLzmcPcoY57+0JQpFEoQRFu5+Hk2qIi0rGKDzQd3M9FTWrDFrt9lTxxatf4ElJ/uV+Ol5c4JmQksDyI6PF3OR8yC8GcjWfgJbnoPEXmOlJ4Eo34tyBCOjerAAsIleyn2C6Igqsegy8L9LUqD0Jbk70rEw9/dEqwSnH7NRGg02mQgqKjApk5K8wi3/+bSDd1Oicofm5h9VUlbgJuXvCjHF827YOeeL6YRmPVLOuJLg+IrWNktrNmTYBEtHIFrD/ZGGKq3dHfGF5',
	}  
}
