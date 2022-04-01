FROM python:3-alpine

MAINTAINER Youngho <dominoyh5@gmail.com>

COPY . .

RUN \
    pip install fastapi && \
    pip install uvicorn

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host=0.0.0.0"]
