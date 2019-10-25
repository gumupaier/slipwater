FROM python:3.7.1

COPY . /work

WORKDIR /work

RUN env LDFLAGS="-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib" pip install mysqlclient -i https://pypi.doubanio.com/simple/
RUN pip install -r requirements.txt -i https://pypi.doubanio.com/simple/

ENTRYPOINT ["/work/init.sh"]

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000