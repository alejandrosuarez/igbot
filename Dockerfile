FROM python:3.9.14-slim

WORKDIR /app

COPY Pipfile .
RUN pip install pipenv
RUN pipenv install
COPY . .

VOLUME /app/examples/autopost/pics/

CMD [ "pipenv", "run", "python", "examples/multi_script_CLI.py"]
