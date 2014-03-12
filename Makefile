j:
	yum install autojump -y
pip:
	yum install python-setuptools -y
	easy_install pip
epel:
	rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
