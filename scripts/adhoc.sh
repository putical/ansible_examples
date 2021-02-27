#!/bin/bash

# Create the user matt
ansible edewillians2c.mylabserver.com -i /home/cloud_user/ansible/inventory/inv.ini -b -m user -a "name=matt"

# Create the demo directory in matt's home directory
ansible edewillians2c.mylabserver.com -i /home/cloud_user/ansible/inventory/inv.ini -b -m file -a "path=/home/matt/demo state=directory owner=matt group=matt mode=0755"

# Copy testFile to matt's home directory
ansible edewillians2c.mylabserver.com -i /home/cloud_user/ansible/inventory/inv.ini -b -m copy -a "src=/home/cloud_user/ansible/testFile dest=/home/matt/testFile mode=0644 owner=matt group=matt"

# Install httpd to the webservers group and start and enable the httpd service
ansible webservers -i /home/cloud_user/ansible/inventory/inv.ini -b -m yum -a "name=httpd state=latest"
ansible webservers -i /home/cloud_user/ansible/inventory/inv.ini -b -m service -a "name=httpd state=started enabled=yes"

