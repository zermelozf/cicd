# fast.py
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from datetime import datetime

from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def root():
    response = {
        'greeting': 'Servus, griaß di!',    # This is a typical Bavarian greeting ;)
        'timestamp': datetime.now() 
    }

    return response