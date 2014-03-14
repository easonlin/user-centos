install:
	cp -f etc/yum.repos.d/* /etc/yum.repos.d
	rpm --import http://packages.elasticsearch.org/GPG-KEY-elasticsearch
	rpm --import http://packages.treasure-data.com/redhat/RPM-GPG-KEY-td-agent
	yum -y install elasticsearch td-agent java-1.7.0-openjdk
	/etc/init.d/elasticsearch start
	/usr/lib64/fluent/ruby/bin/fluent-gem install fluent-plugin-elasticsearch
	patch /etc/td-agent/td-agent.conf < etc/td-agent/td-agent.conf.patch
	/etc/init.d/td-agent restart

kibana:
	yum -y install nginx
	patch /etc/nginx/conf.d/default.conf < etc/nginx/conf.d/default.conf.patch
	rm -f /usr/share/nginx/html/index.html
	curl -O https://download.elasticsearch.org/kibana/kibana/kibana-3.0.0milestone5.tar.gz
	tar zxvf kibana-3.0.0milestone5.tar.gz
	mv -f kibana-3.0.0milestone5 /usr/share/nginx/html/kibana
	rm -f kibana-3.0.0milestone5.tar.gz
diff:
	/usr/bin/diff -u /etc/nginx/conf.d/default.conf etc/nginx/conf.d/default.conf > etc/nginx/conf.d/default.conf.patch;true
	/usr/bin/diff -u /etc/td-agent/td-agent.conf etc/td-agent/td-agent.conf > etc/td-agent/td-agent.conf.patch;true
clean:
	rm -f etc/td-agent/td-agent.conf.patch
	rm -f etc/nginx/conf.d/default.conf.patch
copy:
	cp -f etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
	cp -f etc/td-agent/td-agent.conf /etc/td-agent/td-agent.conf
