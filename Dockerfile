FROM alexellis2/raspistill:latest
ENTRYPOINT []
RUN apt-get update -qy && apt-get install -qy python && apt-get install -qy fswebcam
COPY . .

VOLUME /var/image/

CMD ["python", "take.py", "60"]
