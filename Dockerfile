FROM python:3.7.2-alpine3.7

RUN pip install pipenv

COPY . /app
WORKDIR /app

RUN pipenv install --system --deploy --ignore-pipfile

CMD ["gunicorn", "app.main:app", "-w", "4", "-b", "0.0.0.0:5000", "-t", "1000"]