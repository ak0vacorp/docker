from fastapi import FastAPI
from pydantic import BaseModel 

app = FastAPI()

class Base(BaseModel):
    msg: str

#root
@app.get('/')
async def root():       
    return{'message':'you are at Root'}


#uvicorn main:app --reload --port 8898
