FROM python:3.8-alpine

RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN python -m pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "/app/app.py"]
