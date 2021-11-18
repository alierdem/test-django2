FROM python:3.8.9-buster

WORKDIR /usr/src/app
COPY poetry.lock pyproject.toml ./

RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-dev
RUN pip uninstall --yes poetry

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
