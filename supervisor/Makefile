install:
	cp -f etc/init.d/supervisord /etc/init.d/supervisord
	cp -f etc/sysconfig/supervisord /etc/sysconfig/supervisord
	cp -f etc/supervisord.conf /etc/supervisord.conf
	mkdir -p /etc/supervisord.d
	mkdir -p /var/log/supervisord
	chkconfig --add /etc/init.d/supervisord
	chkconfig supervisord on
