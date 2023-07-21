FROM python:3.9

ENV SECRET_KEY=6-i!w0iblehw(y=@95n+oh2yktgp)ue4pq@$y_u979&edv-7=j \
    DEBUG=True \
    ALLOWED_HOSTS=*

WORKDIR /new_project

COPY ./Django_main .

RUN pip install -r requirements.txt && \
    python manage.py makemigrations && \
    python manage.py migrate --run-syncdb

EXPOSE 8000

CMD gunicorn stocks_products.wsgi -b 0.0.0.0:8000