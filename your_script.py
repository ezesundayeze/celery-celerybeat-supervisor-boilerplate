import MySQLdb
from datetime import timedelta
import datetime
from celery import Celery
from celery.schedules import crontab
import os
from models import *
from datetime import timedelta, datetime

app = Celery("app_name")
app.config_from_object("celeryconfig")
db = MySQLdb.connect(host="localhost", user="username", passwd="dbpassword", db="yourdbname")

@app.task
def entry_function():
   """ 
   Your code
   """
       
    return ""



