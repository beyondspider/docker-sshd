#!/bin/bash
if [ -f /.root_password_created ]; then
    echo "'root' user already created"
    exit 0
fi
 
#generate password
PASS=${ROOT_PASS:-$(pwgen -s 12 1)}
_word=$( [ ${ROOT_PASS} ] && echo "preset" || echo "random" )
 
echo "=> Creating and root user with a ${_word} password in docker"

echo "${PASS}" | passwd --stdin root

echo "=> Done!"
touch /.root_password_created
 
echo "========================================================================"
echo "You can now configure to this server using:"
echo ""
echo "    root:${PASS}"
echo ""
echo "========================================================================"
