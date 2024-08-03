FROM python:3.10.6

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt 

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY api.py /code/api.py

EXPOSE 8080

CMD ["fastapi", "run", "api.py", "--port", "8080"]
