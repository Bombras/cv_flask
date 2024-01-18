FROM python:3.10.13-alpine3.19 as runtime
# COPY --from=builder $VIRTUAL_ENV $VIRTUAL_ENV
ENV POETRY_VERSION=1.7.1 POETRY_VIRTUALENVS_IN_PROJECT=true FLASK_APP=app/cv_main.py PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1

WORKDIR /app

RUN pip install poetry==$POETRY_VERSION

ADD /app/ /app/

# ADD converted_cert.crt /usr/local/share/ca-certificates/
# RUN update-ca-certificates

# RUN apk add --no-cache \
#     --repository https://dl-cdn.alpinelinux.org/alpine/v3.19/main/ \
#     ca-certificates

RUN poetry install --no-cache

ENV VIRTUAL_ENV=/app/.venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

FROM runtime
EXPOSE 8000
# CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:8000", "--chdir", "./cv_flask", "cv_main:app", "-D"]
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:8000", "cv_main:app"]