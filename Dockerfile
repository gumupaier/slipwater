FROM python:3.7.1

COPY . /work

WORKDIR /work

RUN pip install -r requirements.txt -i https://pypi.doubanio.com/simple/