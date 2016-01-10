#!/bin/sh

remove_tmp () {
	rm -rf /tmp/ecm.info
}

[ -e /usr/bin/csdefault ] && export SRVACTIVE=$(cat /usr/bin/csdefault)
[ -e /usr/bin/emudefault ] && export EMUACTIVE=$(cat /usr/bin/emudefault)

remove_tmp
[ -e /var/bin/emudefault ] && /usr/emuscript/${EMUACTIVE}_em.sh stop
[ -e /var/bin/csdefault ] && /usr/emuscript/${SRVACTIVE}_cs.sh stop
sleep 1
[ -e /var/bin/csdefault ] && /usr/emuscript/${SRVACTIVE}_cs.sh start
sleep 7
[ -e /var/bin/emudefault ] && /usr/emuscript/${EMUACTIVE}_em.sh start

exit 0
