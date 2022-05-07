FROM python:3.8.3-alpine


RUN adduser -D application
USER application
WORKDIR /app
COPY --chown=application:application . .
ENV PATH="/home/application/.local/bin:${PATH}"
RUN pip install --user -r requirements.txt

EXPOSE 5000
CMD ["python", "/app/app.py"]
