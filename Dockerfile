FROM python:3.10

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app.py /code/app.py

COPY ./templates /code/templates

ENV BACKEND_URL=http://ac676d21a6d784b099fb4100b1c7fa37-1018539001.us-east-1.elb.amazonaws.com/:8000

CMD ["flask", "run", "--host=0.0.0.0"]
