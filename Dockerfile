FROM python:3-alpine

MAINTAINER Youngho <dominoyh5@gmail.com>

RUN \
    pip install fastapi && \
    pip install uvicorn

EXPOSE 8000

COPY . .

CMD ["uvicorn", "main:app", "--host=0.0.0.0"]
