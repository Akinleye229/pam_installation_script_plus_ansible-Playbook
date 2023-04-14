#!/bin/bash

# Install Centrify packages
rpm -i CentrifyDC-openssl-5.9.1-329-rhel6.x86-64.rpm
rpm -i CentrifyDC-curl-5.9.1-329-rhel6.x86_64.rpm
rpm -i CentrifyDC-openldap-5.9.1-329-rhel6.x86_64.rpm
rpm -i CentrifyDC-5.9.1-329-rhel6.x86_64.rpm
rpm -i CentrifyDC-Idapproxy-5.9.1-329-rhel6.x86_64.rpm

# Join the Linux server to domain
echo "Enter domain name:"
read domain_name
echo "Enter Unix-zone name:"
read unix_zone
echo "Enter domain admin password:"
read -s domain_admin_password

adjoin $domain_name -z $unix_zone -u domain_admin_user -p $domain_admin_password
