#!/bin/bash
set -ex

if [[ -z $SLAPD_ROOT_PASSWORD ]]; then
     echo >&2 "Error: Container not configured and SLAPD_ROOT_PASSWORD not set. "
     exit 1
fi

ldif_dir=/etc/ldap/ldif
slapd_root_password_hash=`slappasswd -s "${SLAPD_ROOT_PASSWORD}"`
sed -i "s#%SLAPD_ROOT_PASSWORD%#$slapd_root_password_hash#" $ldif_dir/*.ldif

ldapmodify -Y EXTERNAL -H ldapi:/// -f $ldif_dir/initRoot.ldif
ldapmodify -Y EXTERNAL -H ldapi:/// -f $ldif_dir/initAccess.ldif
ldapadd -f $ldif_dir/addOAndOu.ldif -D cn=admin,dc=mrsu,dc=me -w $SLAPD_ROOT_PASSWORD
ldapadd -f $ldif_dir/addUser.ldif -D cn=admin,dc=mrsu,dc=me -w $SLAPD_ROOT_PASSWORD
ldapmodify -Y EXTERNAL -H ldapi:/// -f $ldif_dir/tls.ldif
