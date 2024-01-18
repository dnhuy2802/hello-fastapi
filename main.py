from fastapi import FastAPI
from os import environ as env

app  = FastAPI()

@app.get("/")
async def root():
    return {'demo':f"Hello This is {env['MY_VAR']}!"}
