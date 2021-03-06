<!-- # This file is generated by make from aws-sg-revoker. all changes will be lost. -->
```
 NAME
       aws-sg-revoker  -- revokes access permission from security groups to public IP 
				addresses outside of your AWS account

 SYNOPSIS
	aws-sg-revoker	[ -l ]  
			[-g security-group-name ] 
			[ -w IP-address ] [-w IP-address ] ...

 OPTIONS
	-l list the suspect IP addresses only
	-w regexp of whitelisted IP address 
	-g security-group-name to generate revokes for
 
 DESCRIPTION
       generates aws IP permissions revokes for every IP address not in the account or not 
	in the whitelist. By default, 0.0.0.0/0, all private IP address and any
	network ranges are whitelisted.

	The -l option shows all the IP addresses and attempts to do a DNS reverse lookup.

 	the commands are not executed automatically. You should do this, by piping it to a shell:

		$ aws-sg-revoker | tee revoked.log | bash

 USAGE
	To list all the ip addresses or ranges that are not defined in your account, type:

		$ aws-sg-revoker -l  

	To list all the ip addresses or ranges that are not defined in your account of a specific
	security group, type:

		$ aws-sg-revoker -l  -w  $(curl -s http://myip.dnsomatic.com)

	To list all the ip addresses or ranges that are not defined in your account, 
	except your own ip address, type:

		$ aws-sg-revoker -l  -w  $(curl -s http://myip.dnsomatic.com | sed 's/\./\\./g')

	To see all the revoke commands for ip addresses or ranges not defined in your account, for
	a specific security group, type:

		$ aws-sg-revoker -g sg-name

	to execute these commands, type:
		$ aws-sg-revoker -g sg-name | tee revoked.log | bash
	

 PREREQUISITES
	you have to have installed on your system:
		- aws cli
		- jq

 CAVEATS
	1) The script does not do CIDR block calculation. It uses regexp only. this 
	   may accidentally cause an unintended removal.
	2) Do not forget to escape your dot's for whitelist IP addresses :-) 

 AUTHOR
	M.J. van Holsteijn 

 COPYRIGHT
	aws-sg-revoker
	Copyright (C) 2015 Xebia Nederland B.V.

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License along
	with this program; if not, write to the Free Software Foundation, Inc.,
	51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.


```
