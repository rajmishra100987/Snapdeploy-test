# Lightweight Python base image
FROM python:3.10-slim

# Working directory inside container
WORKDIR /app

# Logs ko real-time terminal par dikhane ke liye unbuffered mode
ENV PYTHONUNBUFFERED=1
ENV PORT=3000

# Script ki Dependencies install karein
RUN pip install --no-cache-dir requests

# Poora project directory container mein copy karein
COPY . /app/

# Port exposes
EXPOSE 3000

# Script execute karein
CMD ["python", "main.py"]
