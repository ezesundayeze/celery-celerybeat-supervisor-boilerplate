#!/bin/bash


# Install Dependencies

apt install libmysqlclient20 libmysqlclient-dev python3-dev python-mysqldb rabbitmq-server


# Copy Celery and Celerybeat Init Files to /etc/init.d/ and make it executable

cp bin/init_celerybeat /etc/init.d/celerybeat
cp bin/init_celeryd /etc/init.d/celeryd
chmod +x /etc/init.d/celerybeat /etc/init.d/celeryd


# Create user for celery

useradd celery -s /bin/bash
groupadd celery
usermod -a -G celery celery


# Create Log File for celery and change file modes

mkdir /var/log/celery
chown celery:celery /var/log/celery


# Copy the default configs for celery and celerybeat

cp bin/default_celeryd /etc/default/celeryd
cp bin/default_celerybeat /etc/default/celerybeat
chmod +x /etc/default/celeryd /etc/default/celerybeat

update-rc.d celeryd defaults
update-rc.d celerybeat defaults

#/etc/init.d/celeryd start
#/etc/init.d/celerybeat start
