FROM python:3.9.5-slim-buster
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_APP=main
ENV PORT=5000

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]