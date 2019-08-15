**Documentation**

## Installation

### Ubuntu Server Installation

**Ensure sure you are in the 'bed_charge' directory while running this commands**

Install virtualenv globally

```shell
pip3 install virtualenv
```
**Create a  virtual environment**

```shell
virtualenv env
```
**Activate the virtual environment**

```shell
source env/bin/activate
```

*Install all dependencies**

This contain a ton of dependencies. you can open the file to inspect them.

```shell

sudo install ./install.sh

```

```shell

sudo pip install -r requirement.txt
```


## Running worker and beat schedular on your terminal for testing

```shell

celery -A {app_file_name} worker --loglevel=info --detach

```
```shell 
celery -A {app_file_name} beat --loglevel=info --detach
```

Run celerybeat and celery daemon

```shell 
    sudo systemctl start celeryd && service celerybeat start
```

you can install flower a web monitor to monitor the celery worker process.

```shell

pip install wheel flower

```

### Start celery in production
Ensure you are logged in as a superuser
Activate your virtual environment then run


```shell
supervisorctl start all
```

Ensure you are in the directory where the supervisor.conf file is and your venv is active.
Hopefully everything works well

***Ensure you open the supervisor.conf and change the settings according to your system configuration***

