#!/usr/bin/env bash

# 首次运行执行migration
python manage.py makemigrations

python manage.py migrate --noinput


python manage.py loaddata init_super_user.json

exec "$@"