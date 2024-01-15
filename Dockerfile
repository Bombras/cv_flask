FROM python:3.10.13-alpine3.19 as runtime
# COPY --from=builder $VIRTUAL_ENV $VIRTUAL_ENV
ENV POETRY_VERSION=1.7.1 POETRY_VIRTUALENVS_IN_PROJECT=true FLASK_APP=cv_main.py
RUN pip install poetry==$POETRY_VERSION
RUN apk add nginx==1.24.0-r14

COPY cv_main.py manage.py pyproject.toml /app/

WORKDIR /app

RUN poetry install --no-cache

ADD static /app/static
ADD templates /app/templates

ENV VIRTUAL_ENV=/app/.venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
