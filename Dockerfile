FROM python:3.6
RUN apt-get install -y libpq-dev
RUN  pip install --upgrade pip
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY ./web/requirements.txt /code/
RUN pip install -r requirements.txt
COPY ./web /code/
CMD gunicorn --bind 0.0.0.0:8000 docker_django.wsgi