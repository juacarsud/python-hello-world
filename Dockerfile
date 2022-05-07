FROM python:3.8.3-alpine


RUN apt-get update -y && apt-get install curl -y && adduser -D application
USER application
WORKDIR /app
COPY --chown=application:application . .
ENV PATH="/home/application/.local/bin:${PATH}"
RUN curl https://pypi.org/simple/flask/
RUN pip install --user -r requirements.txt

EXPOSE 5000
CMD ["python", "/app/app.py"]
