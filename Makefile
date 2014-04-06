j:
	yum install autojump -y
pip:
	yum install python-setuptools -y
	easy_install pip
epel:
	rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
curl:
	yum install -y curl
gae: curl
	curl https://dl.google.com/dl/cloudsdk/release/install_google_cloud_sdk.bash | bash
wget:
	yum install -y wget
xz:
	yum install -y xz-libs
Python-2.7.6.tar.xz: wget
	wget --no-check-certificate http://www.python.org/ftp/python/2.7.6/Python-2.7.6.tar.xz
Python-2.7.6:
	tar xf Python-2.7.6.tar.xz
python27: Python-2.7.6
	cd Python-2.7.6;./configure --prefix=/usr/local
	cd Python-2.7.6;make
	cd Python-2.7.6;make altinstall
