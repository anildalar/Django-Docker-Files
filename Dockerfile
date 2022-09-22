FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .
RUN django-admin startproject myproject .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]