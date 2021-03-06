FROM python:3.8-slim

COPY ./requirements.txt /app/requirements.txt
COPY ./flask_app.py /app/flask_app.py
COPY ./model.pkl /app/model.pkl

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]

CMD ["flask_app.py"]
