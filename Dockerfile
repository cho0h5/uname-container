FROM python:3-alpine

MAINTAINER Youngho <dominoyh5@gmail.com>

ENV REDIS_HOST=redis

RUN \
    pip install fastapi && \
    pip install uvicorn && \
    pip install redis

EXPOSE 8000

COPY . .

CMD ["uvicorn", "main:app", "--host=0.0.0.0"]
