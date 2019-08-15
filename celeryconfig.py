from datetime import timedelta
# Broker settings.
broker_url = 'amqp://guest:guest@localhost:5672//'

# List of modules to import when the Celery worker starts.
imports = []

# Using the database to store task state and results.
# result_backend = 'db+sqlite:///results.db'

task_annotations = {'tasks.add': {'rate_limit': '10/s'}}

beat_max_loop_interval = 60 * 60

beat_schedule = {
    "app_name": {
        "task": "app_name.entry_function",
        "schedule": timedelta(minutes=5)
    }
}