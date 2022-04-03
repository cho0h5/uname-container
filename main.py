import os
import socket
import redis
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    try:
        rd = redis.StrictRedis(host=os.environ["REDIS_HOST"], port=6379, db=0)

        rd.hincrby("count", socket.gethostname(), 1)
        return rd.hgetall("count")
    except:
        return socket.gethostname()
